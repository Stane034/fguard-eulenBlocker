--[[
    _______ _____ _    _ _______  ______ _     _ _______  ______ ______ 
    |______   |    \  /  |______ |  ____ |     | |_____| |_____/ |     \
    |       __|__   \/   |______ |_____| |_____| |     | |    \_ |_____/
    ____________________________________________________________________
    [c] Coded By : $tane#9999
    [v] Version : Beta 1.0.0
    [d] Description : This will work very briefly, because this way of being made will be bypassed by the eulen very soon, which is why it has been made public.
    [i] Information : If you want to buy the best Anticheat visit https://fiveguard.net or join our discord server : https://discord.gg/tnPwJPYU9y
    [h] Discord : https://discord.gg/tnPwJPYU9y
    ____________________________________________________________________

    THIS IS NOT CODE FROM FIVEGUARD ANTICHEAT.
]]--


local Here = {}
local Spawned = {}

RegisterServerEvent("fg:__sendHeartbeat__")
AddEventHandler("fg:__sendHeartbeat__", function(id)
    if Here[tonumber(id)] == nil then
        Here[tonumber(id)] = 1
    else
        Here[tonumber(id)] = 1
    end
    Wait(20)
    StartHeartbeat(tonumber(id))    
end)

RegisterServerEvent('fg:spawned')
AddEventHandler('fg:spawned', function()
    local id = source
    if Spawned[id] == nil then
        Spawned[id] = 1
    end
end)

RegisterServerEvent("fg:banEulen")
AddEventHandler("fg:banEulen", function()
    local src = source
    Ban(src, '[fiveguard.net] Stop Being moron ( Event canceled )')
end)

StartHeartbeat = function(id)
    if Here[tonumber(id)] == nil or Here[tonumber(id)] == 0 then
       Ban(id, '[fiveguard.net] Stop Being moron ( Heartbeat didn\'t send ).')
    end
    Wait(20)

    Here[tonumber(id)] = 0
end

ServerHeartbeat = function()
    print('[fiveguard.net] Server heartbeat is stable')
    for f, g in ipairs(GetPlayers()) do
        if Here[tonumber(g)] == nil then
            if Spawned[tonumber(g)] == 1 then
                Ban(tonumber(g), '[fiveguard.net] Not loaded in Players.')           
            end
        end
    end
    SetTimeout(10000, ServerHeartbeat)
end

Citizen.CreateThread(function()
    Wait(10000)
    ServerHeartbeat()
end)

Ban = function(id, args) 
    print('[fiveguard.net] ' .. GetPlayerName(id) .. ' has been banned, Reason : ' .. args) -- here you can put your log system
    DropPlayer(id, args) -- you can make your ban system here.
end

--[[
    Thank you Ciastekbatak for allowing me to do this and make it public
    ⣼⣴⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣶⣶⣿⣿⣿⣿⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⢀⣠⣦⡀
    ⣿⣿⣿⠒⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⣀⣴⣸⡏⠀
    ⠻⠛⠁⠀⠀⠐⠿⠂⢀⣿⣶⣤⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡖⣿⣿⣿⡟⠂
    ⠀⢀⣤⣤⠀⠀⠀⣠⣾⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⢻⠛⠁⠀
    ⠀⠀⠙⠋⠀⢠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⠏⢿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣆⠀⠀⠀
    ⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢸⣿⣿⣿⡟⠀⠈⣿⣿⡟⢸⣿⣿⣿⣿⣿⣿⡄⠀⠀
    ⠀⠀⠀⠰⣾⡦⠙⠛⢿⠻⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⣸⣿⣿⡟⠀⠀⡀⢻⣿⠁⠸⣿⣿⣿⣿⣿⣿⣷⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⢸⢀⣿⣿⣿⣿⣿⣿⠓⢶⢄⠀⣿⣿⡟⠀⢖⠕⠊⢹⠳⣤⡀⣿⣿⣿⣿⣿⣿⣿⡀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠘⣿⣿⣿⣿⡿⠁⠀⠈⢧⢰⣿⠏⠀⢠⠃⠀⠀⠀⠀⠈⢒⣿⣿⣿⣻⣿⣿⣿⣧⠀
    ⠀⠀⣶⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡟⠀⠀⢰⠀⢘⡿⠃⠀⠀⠘⠀⡄⠀⠀⠀⠀⣸⣿⣿⡏⣿⣿⣿⣿⣿⣇
    ⠀⠒⣿⠒⣶⠀⠀⠀⠀⠀⢻⣿⣿⡷⣄⠀⢸⠠⣊⠁⠀⠀⠀⢡⡀⡇⠀⠀⣀⣾⣿⣿⣿⢿⣾⣿⣿⣿⣿⣿
    ⠀⠀⣿⠀⣿⠀⠀⠀⠀⠀⠘⣿⣿⣿⡉⠉⠛⠋⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠓⠊⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⠀⠀⠀⠀⠠⠴⡖⠂⠀⠀⢰⣿⣿⣿⣧⡀⠀⠀⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎
    ⠀⠀⠀⠀⠉⢩⡏⠉⠀⣠⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⠐⠒⠒⠂⠀⢀⣠⢶⡛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⠤⣤⣤⡶⠛⠁⢈⢎⣾⢿⣿⣿⣿⣿⣿⣿⣿⣿⣏
    ⠀⠀⠀⠀⠀⡀⠚⠋⠁⣾⣿⣿⣿⣿⣿⣿⣿⠿⠛⡝⠁⠀⡟⠉⠀⢀⡴⠁⡼⠃⡜⠈⠙⠻⢿⣿⣿⣿⣿⣿
    ⠀⠀⣀⡀⢾⣿⡆⠀⠀⣿⣿⣿⣿⡿⠛⢉⠀⠀⢠⠇⢃⠰⠀⢠⣖⠁⢀⠜⠀⡰⠁⠀⠀⠀⡠⠊⠙⣻⢿⣿
    ⠀⠘⠿⠋⠀⠁⠀⠀⠀⣿⣿⣼⠁⠀⠀⠀⢣⠄⢸⢀⣿⣦⠀⢸⡣⣷⣅⠀⠰⠁⠀⢀⠠⠊⠀⠀⡔⠀⠀⠹
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣇⠃⡄⠀⠀⠀⠀⢫⠜⠁⢹⣏⣤⣟⣼⠏⠈⢆⠃⣀⡔⠁⠀⠀⠀⡜⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡏⠀⠡⠀⠀⠀⠀⠀⢫⢄⢀⣿⣿⣿⠁⠀⢀⡤⡪⠋⠀⠀⠀⠀⢠⠁⠀⠀⠀⠀
    ⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠘⠕⣆⠂⣿⣿⡿⠔⢊⠕⠉⠀⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⡂⣼⣿⠡⠊⠁⠀⠀⠀⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣵⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠗⠀⠀⠀

    ######                                                          #     # ####### 
    #     # #  ####     ##### #    #   ##   #    # #    #  ####      #   #       #  
    #     # # #    #      #   #    #  #  #  ##   # #   #  #           # #       #   
    ######  # #           #   ###### #    # # #  # ####    ####        #       #    
    #     # # #  ###      #   #    # ###### #  # # #  #        #      # #     #     
    #     # # #    #      #   #    # #    # #   ## #   #  #    #     #   #   #      
    ######  #  ####       #   #    # #    # #    # #    #  ####     #     # ####### ⠀
]]--
