ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local RC = RegisterCommand
local ECT = TriggerClientEvent


RC(Config.Police["Command"], function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.UseItem then
        if xPlayer.getInventoryItem(Config.Global["ItemNeed"]).count >= 1 then
            if xPlayer.job.name == Config.Police["Job"] then
                if Config.RemoveItem then
            xPlayer.removeInventoryItem(Config.Global["ItemNeed"], 1)
                end
            ECT("shield:TogglePoliceShield", src)
    else
        ECT('esx:showNotification', src, Config.Global["Job"])
	end
else
    ECT('esx:showNotification', src, Config.Global["Item"])
end
end
end)

RC(Config.Sheriff["Command"], function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.UseItem then
        if xPlayer.getInventoryItem(Config.Global["ItemNeed"]).count >= 1 then
            if xPlayer.job.name == Config.Sheriff["Job"] then
                if Config.RemoveItem then
            xPlayer.removeInventoryItem(Config.Global["ItemNeed"], 1)
                end
            ECT("shield:ToggleSheriffShield", src)
    else
        ECT('esx:showNotification', src, Config.Global["Job"])
	end
else
    ECT('esx:showNotification', src, Config.Global["Item"])
end
end
end)

RC(Config.Swat["Command"], function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.UseItem then
        if xPlayer.getInventoryItem(Config.Global["ItemNeed"]).count >= 1 then
            if xPlayer.job.name == Config.Swat["Job"] then
                if Config.RemoveItem then
            xPlayer.removeInventoryItem(Config.Global["ItemNeed"], 1)
                end
            ECT("shield:ToggleSwatShield", src)
    else
        ECT('esx:showNotification', src, Config.Global["Job"])
	end
else
    ECT('esx:showNotification', src, Config.Global["Item"])
end
end
end)

RC(Config.Noose["Command"], function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.UseItem then
        if xPlayer.getInventoryItem(Config.Global["ItemNeed"]).count >= 1 then
            if xPlayer.job.name == Config.Noose["Job"] then
                if Config.RemoveItem then
            xPlayer.removeInventoryItem(Config.Global["ItemNeed"], 1)
                end
            ECT("shield:ToggleNooseShield", src)
    else
        ECT('esx:showNotification', src, Config.Global["Job"])
	end
else
    ECT('esx:showNotification', src, Config.Global["Item"])
end
end
end)

RC(Config.Fib["Command"], function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.UseItem then
        if xPlayer.getInventoryItem(Config.Global["ItemNeed"]).count >= 1 then
            if xPlayer.job.name == Config.Fib["Job"] then
                if Config.RemoveItem then
            xPlayer.removeInventoryItem(Config.Global["ItemNeed"], 1)
                end
            ECT("shield:ToggleFibShield", src)
    else
        ECT('esx:showNotification', src, Config.Global["Job"])
	end
else
    ECT('esx:showNotification', src, Config.Global["Item"])
end
end
end)