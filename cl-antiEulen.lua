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

local EventIsHere = true

for i = 1, #FGuard.Events, 1 do
    RegisterNetEvent(FGuard.Events[i])
    AddEventHandler(FGuard.Events[i], function()
        EventIsHere = true
    end)
end

CheckingEventIsAlive = function()
    if not EventIsHere then
        return TriggerServerEvent("fg:banEulen")
    end
end

SendHeartBeatToServer = function()
    TriggerServerEvent('fg:__sendHeartbeat__', GetPlayerServerId(PlayerId()))
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        for i = 1, #FGuard.Events, 1 do
            TriggerEvent(FGuard.Events[i])
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(5000)
        CheckingEventIsAlive()
        SendHeartBeatToServer()
        EventIsHere = false
    end
end)


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
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣵⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠗⠀⠀⠀⠀
    ######                                                          #     # ####### 
    #     # #  ####     ##### #    #   ##   #    # #    #  ####      #   #       #  
    #     # # #    #      #   #    #  #  #  ##   # #   #  #           # #       #   
    ######  # #           #   ###### #    # # #  # ####    ####        #       #    
    #     # # #  ###      #   #    # ###### #  # # #  #        #      # #     #     
    #     # # #    #      #   #    # #    # #   ## #   #  #    #     #   #   #      
    ######  #  ####       #   #    # #    # #    # #    #  ####     #     # ####### 
]]--
