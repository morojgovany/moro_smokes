local smokers = {}
local smokes = {}

RegisterNetEvent('moro_smokes:setSmokeObject')
AddEventHandler('moro_smokes:setSmokeObject', function(item)
    local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, 0.0)

    TaskStartScenarioInPlace(PlayerPedId(), `WORLD_HUMAN_CROUCH_INSPECT`, 5000, true, false, false, false)
    Wait(5000)

    local smoker = CreateObject("p_campfire01x", coords, true, true, false)
    local index = #smokers + 1
    smokers[index] = smoker
    PlaceObjectOnGroundProperly(smoker)
    SetEntityHeading(smoker, GetEntityHeading(PlayerPedId()))

    TriggerServerEvent("moro_smokes:shareSmoke", GetEntityCoords(smoker), item)

    Wait(Config.items[item].duration * 1000 + 1000)
    DeleteObject(smoker)
    smokers[index] = nil
end)

RegisterNetEvent('moro_smokes:smoke_campfire_players')
AddEventHandler('moro_smokes:smoke_campfire_players', function(coords, itemData)
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
    Wait(duration * 1000)
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
