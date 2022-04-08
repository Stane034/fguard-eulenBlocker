local spawned = false

AddEventHandler('playerSpawned', function()
    Wait(3000)
    TriggerServerEvent('fg:spawned')
    spawned = true
end)

CreateThread(function()
    while true do
        Wait(10000)
        local player = PlayerPedId()
        if DoesEntityExist(player) then
            if not spawned then
                return TriggerServerEvent("fg:banEulen")
            end
        end
    end
end)

AddEventHandler('onClientResourceStart', function()
    local playerID = PlayerPedId()
    local coords = GetEntityCoords(playerID)
    if DoesEntityExist(playerID) then
        TriggerEvent('playerSpawned')
    else
        Wait(5000)
        TriggerEvent('playerSpawned')
    end
end)

-- Put this in a random resource as a client script I didn't have time to make you a mini installer
