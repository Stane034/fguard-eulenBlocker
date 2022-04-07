AddEventHandler('playerSpawned', function()
    Wait(3000)
    TriggerServerEvent('fg:spawned')
end)

-- Put this in a random resource as a client script I didn't have time to make you a mini installer