local QBCore = exports['qb-core']:GetSharedObject()

RegisterCommand("example_ui", function(source) 
    local hasPer = QBCore.Functions.HasPermission(source, Config.Permission)
    local playerData = QBCore.Functions.GetPlayer(source).PlayerData
    if hasPer then 
        TriggerClientEvent("example_ui:sendMessage", source, playerData)
    else 
        TriggerClientEvent("QBCore:Notify", source, "Bu Komutu kullanmak için yeterli yetkin bulunmuyor.", "error", 5000)
    end
end)    