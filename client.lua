local smokers = {}
local smokes = {}

Citizen.CreateThread(function()
    jo.framework:onCharacterSelected(function()
        jo.async.moro_smokes.getCurrentSmokes():await(function(smokeList)
            for _, smoke in pairs(smokeList) do
                TriggerEvent('moro_smokes:syncSmokes', smoke.coords, smoke.itemData)
                Wait(500)
            end
        end)
    end)
end)

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
    local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 2.0, 0.0)

    FreezeEntityPosition(playerPed, true)
    playAnim()
    Wait(10000)
    ClearPedTasks(playerPed)
    FreezeEntityPosition(playerPed, false)

    local smoker = CreateObject("p_campfire01x", coords, true, true, false)
    local index = #smokers + 1
    smokers[index] = smoker
    PlaceObjectOnGroundProperly(smoker)
    SetEntityHeading(smoker, GetEntityHeading(playerPed))

    TriggerServerEvent("moro_smokes:shareSmoke", GetEntityCoords(smoker), item)

    Wait(Config.items[item].duration * 1000 + 1000)
    DeleteObject(smoker)
    smokers[index] = nil
end)

RegisterNetEvent('moro_smokes:syncSmokes')
AddEventHandler('moro_smokes:syncSmokes', function(coords, itemData)
    RequestNamedPtfxAsset(`SCR_ADV_SOK`)
    while not HasNamedPtfxAssetLoaded(`SCR_ADV_SOK`) do
        Wait(10)
    end

    UseParticleFxAsset("SCR_ADV_SOK")
    local groundCheck, ground = GetGroundZAndNormalFor_3dCoord(coords.x, coords.y, coords.z)
    if groundCheck then
        local newZ = ground - 1.0
        coords = vector3(coords.x, coords.y, newZ)
    end
    local smoke = StartParticleFxLoopedAtCoord("scr_adv_sok_torchsmoke", coords.x, coords.y, coords.z - 6.5, 0.0, 0.0, 0.0, itemData.scale, false, false, false, true)
    local index = #smokes + 1
    smokes[index] = smoke
    SetParticleFxLoopedColour(smoke, itemData.color.r, itemData.color.g, itemData.color.b, 1)
    Wait(itemData.duration * 1000)
    StopParticleFxLooped(smoke, true)
    smokes[index] = nil
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
    end
end)
