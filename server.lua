local activeSmokes = {}
local smokeIdCounter = 0

Citizen.CreateThread(function()
    for itemName, itemData in pairs(Config.items) do
        jo.framework:registerUseItem(itemName, true, function(source, metadata)
            local _source = source
            if jo.framework:canUseItem(_source, itemName, 1, metadata, true) then
                if #activeSmokes >= Config.maxSmokes then
                    jo.notif.right(_source, Config.translations.maxSmokesReached, "hud_textures", "cross", "COLOR_RED", 5000)
                    return
                end
                jo.framework:removeItem(_source, itemName, 1, metadata)
                local color = Config.smokes[itemName].color
                TriggerClientEvent("moro_smokes:setSmokeObject", _source, color)
                jo.notif.right(_source, Config.translations.smokeUsed, "hud_textures", "check", "COLOR_GREEN", 5000)
            else
                jo.notif.right(_source, Config.translations.noSmokeItem, "hud_textures", "cross", "COLOR_RED", 5000)
            end
        end)
    end
end)

RegisterServerEvent("moro_smokes:shareSmoke")
AddEventHandler("moro_smokes:shareSmoke", function(coords, item)
    if not item or not Config.items[item] then
        return
    end

    local itemData = Config.items[item]
    local color = itemData.color
    local syncedItemData = {
        duration = itemData.duration,
        scale = itemData.scale,
        color = {
            r = (color[1] or 0.0) * 1.0,
            g = (color[2] or 0.0) * 1.0,
            b = (color[3] or 0.0) * 1.0
        }
    }

    smokeIdCounter = smokeIdCounter + 1
    local smokeId = smokeIdCounter
    local expiresAt = GetGameTimer() + (syncedItemData.duration * 1000)
    local coordsData = { x = coords.x, y = coords.y, z = coords.z }

    activeSmokes[smokeId] = {
        coords = coordsData,
        itemData = syncedItemData,
        expiresAt = expiresAt
    }

    Citizen.SetTimeout(syncedItemData.duration * 1000, function()
        activeSmokes[smokeId] = nil
    end)

    TriggerClientEvent("moro_smokes:syncSmokes", -1, coords, syncedItemData)
end)

function getCurrentSmokes()
    local now = GetGameTimer()
    local smokeList = {}

    for smokeId, smoke in pairs(activeSmokes) do
        local remainingMs = (smoke.expiresAt or 0) - now

        if remainingMs <= 0 then
            activeSmokes[smokeId] = nil
        else
            table.insert(smokeList, {
                coords = smoke.coords,
                itemData = {
                    duration = remainingMs / 1000,
                    scale = smoke.itemData.scale,
                    color = smoke.itemData.color
                }
            })
        end
    end

    return smokeList
end
