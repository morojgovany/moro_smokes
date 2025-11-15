local smokers = {}
local smokes = {}

RegisterNetEvent('moro_smokes:setSmokeObject')
AddEventHandler('moro_smokes:setSmokeObject', function(item)
    local playerPed = PlayerPedId()
    local function playAnim()
        local dict = Config.animation.dict
        local name = Config.animation.name
        local duration = Config.animation.duration
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            Wait(10)
        end
        TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, duration, 1, 1.0, false, false, false)
        RemoveAnimDict(dict)
    end
    local coords = GetOffsetFromEntityInWorldCoords(playerPed, Config.items[item].offset.x, Config.items[item].offset.y, Config.items[item].offset.z)

    FreezeEntityPosition(playerPed, true)
    playAnim()
    Wait(Config.animation.duration * 0.4)
    local smoker = CreateObjectNoOffset(Config.items[item].model, coords, true, false, true)
    PlaceObjectOnGroundProperly(smoker)
    SetEntityHeading(smoker, GetEntityHeading(playerPed))
    SetEntityInvincible(smoker, true)
    SetEntityRotation(smoker, Config.items[item].rotation.x, Config.items[item].rotation.y, Config.items[item].rotation.z, 2)
    SetEntityCollision(smoker, false, true)
    SetEntityVisible(smoker, true)
    FreezeEntityPosition(smoker, true)
    local index = #smokers + 1
    smokers[index] = smoker
    Wait(Config.animation.duration * 0.35)
    ClearPedTasks(playerPed)
    FreezeEntityPosition(playerPed, false)

    TriggerServerEvent("moro_smokes:shareSmoke", GetEntityCoords(smoker), item)

    Wait(Config.items[item].duration * 1000 + 1000)
    DeleteObject(smoker)
    smokers[index] = nil
end)

RegisterNetEvent('moro_smokes:syncSmoke')
AddEventHandler('moro_smokes:syncSmoke', function(coords, itemData)
    RequestNamedPtfxAsset(`SCR_ADV_SOK`)
    while not HasNamedPtfxAssetLoaded(`SCR_ADV_SOK`) do
        Wait(20)
    end

    UseParticleFxAsset("SCR_ADV_SOK")
    local groundCheck, ground = GetGroundZAndNormalFor_3dCoord(coords.x, coords.y, coords.z)
    if groundCheck then
        local newZ = ground - 1.0
        coords = vector3(coords.x, coords.y, newZ)
    end
    local smoke = StartParticleFxLoopedAtCoord("scr_adv_sok_torchsmoke", coords.x, coords.y, (coords.z - itemData.scale), 0.0, 0.0, 0.0, itemData.scale, false, false, false, true)
    local index = #smokes + 1
    smokes[index] = smoke
    local function normalizeColorValue(value)
        value = value or 0
        return math.min(value / 255.0, 1.0)
    end

    SetParticleFxLoopedColour(
        smoke,
        normalizeColorValue(itemData.color.r),
        normalizeColorValue(itemData.color.g),
        normalizeColorValue(itemData.color.b),
        1
    )
    Wait(itemData.duration * 1000)
    StopParticleFxLooped(smoke, true)
    smokes[index] = nil
end)

RegisterNetEvent('moro_smokes:syncSmokes')
AddEventHandler('moro_smokes:syncSmokes', function(allSmokes)
    for i, smokeData in pairs(allSmokes) do
        TriggerEvent('moro_smokes:syncSmoke', smokeData.coords, smokeData.itemData)
        Wait(500)
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        if #smokers > 0 then
            for _, smoker in pairs(smokers) do
                DeleteObject(smoker)
            end
        end
        if #smokes > 0 then
            for _, smoke in pairs(smokes) do
                StopParticleFxLooped(smoke, true)
            end
        end
        ClearPedTasks(PlayerPedId())
    end
end)
