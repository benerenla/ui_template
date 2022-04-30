RegisterNetEvent("example_ui:sendMessage")
AddEventHandler("example_ui:sendMessage", function(playerData) 
    if playerData ~= nil then 
        SendNUIMessage({
            type = "open",
            active = true,
            playerData = playerData
        })
        SetNuiFocus(true, true)
        TriggerEvent("QBCore:Notify", "Panel başarıyla açıldı", "success", 5000)
    else 
        TriggerEvent("QBCore:Notify", "Kullanıcı datası bulunmuyor lütfen yeniden dene.", "error", 5000)
    end
end)

RegisterNUICallback("exit", function()
    SendNUIMessage({
        type = "open",
        active = false,
    }) 
    SetNuiFocus(false, false)
end)