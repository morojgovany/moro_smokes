Citizen.CreateThread(function()
    for itemName, itemData in pairs(Config.items) do
        jo.framework:registerUseItem(itemName, true, function(source, metadata)
            local _source = source
            if jo.framework:canUseItem(_source, itemName, 1, metadata, true) then
                jo.framework:removeItem(_source, itemName, 1, metadata)
                local color = Config.smokes[itemName].color
                TriggerClientEvent("moro_smokes:setSmokeObject", _source, color)
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
    local color = Config.items[item].color
    local r = color[1] * 1.0 or 0.0
    local g = color[2] * 1.0 or 0.0
    local b = color[3] * 1.0 or 0.0
    itemData.color = {r = r, g = g, b = b}
    TriggerClientEvent("moro_smokes:syncSmokes", -1, coords, itemData)
end)
