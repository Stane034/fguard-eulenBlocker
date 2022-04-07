AddEventHandler('playerJoining', function(_playerId)
    joinedPlayers[#joinedPlayers+1] = source
end)

AddEventHandler('entityCreated', function(e)
    local s
    if not DoesEntityExist(e) then
        return
    end
    if GetEntityType(e) == 1 --[[Ped]] then
        if IsPedAPlayer(e) then
            for i=1,#joinedPlayers do
                s = joinedPlayers[i]
                if e == GetPlayerPed(s) then
                    activePlayers[#activePlayers+1] = s
                    break
                end
            end
        end
    end
end)

-- Put this in a random resource as a client script I didn't have time to make you a mini installer
