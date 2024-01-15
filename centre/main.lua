-- Débogueur Visual Studio Code tomblind.local-lua-debugger-vscode
if pcall(require, "lldebugger") then
    require("lldebugger").start()
end

-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf("no")

--[[
    
  ____    ___   ___   ___ ___  ______  ____   ____    ___       ____  ____    ____  _      __ __  ______  ____  ___   __ __    ___     
 /    |  /  _] /   \ |   |   ||      ||    \ |    |  /  _]     /    ||    \  /    || |    |  |  ||      ||    |/   \ |  |  |  /  _]    
|   __| /  [_ |     || _   _ ||      ||  D  ) |  |  /  [_     |  o  ||  _  ||  o  || |    |  |  ||      | |  ||     ||  |  | /  [_     
|  |  ||    _]|  O  ||  \_/  ||_|  |_||    /  |  | |    _]    |     ||  |  ||     || |___ |  ~  ||_|  |_| |  ||  Q  ||  |  ||    _]    
|  |_ ||   [_ |     ||   |   |  |  |  |    \  |  | |   [_     |  _  ||  |  ||  _  ||     ||___, |  |  |   |  ||     ||  :  ||   [_     
|     ||     ||     ||   |   |  |  |  |  .  \ |  | |     |    |  |  ||  |  ||  |  ||     ||     |  |  |   |  ||     ||     ||     |    
|___,_||_____| \___/ |___|___|  |__|  |__|\_||____||_____|    |__|__||__|__||__|__||_____||____/   |__|  |____|\__,_| \__,_||_____|    
                                                                                                                                       
                                                                                                                                                                                
]]--

--[[
    
  _                 _                                     _                 
 | |               | |                                   | |                
 | |     ___  ___  | |__   __ _ _ __ _   _  ___ ___ _ __ | |_ _ __ ___  ___ 
 | |    / _ \/ __| | '_ \ / _` | '__| | | |/ __/ _ \ '_ \| __| '__/ _ \/ __|
 | |___|  __/\__ \ | |_) | (_| | |  | |_| | (_|  __/ | | | |_| | |  __/\__ \
 |______\___||___/ |_.__/ \__,_|_|   \__, |\___\___|_| |_|\__|_|  \___||___/
                                      __/ |                                 
                                     |___/                                  

]]--
--[[
    
                 |                           #                 #   |               !!!                       .      .                       o          _     _       .      .        |"|           !!!      
    ,,,,,        |.===.       `  _ ,  '      #=ooO=========Ooo=#   |.===.       `  _ _  '       ()_()      .  .:::.         ,,,,,        ` /_\ '     o' \,=./ `o   .  .:::.         _|_|_       `  _ _  '   
   /(o o)\       {}o o{}     -  (o)o)  -     #  \\  (o o)  //  #   {}o o{}     -  (OXO)  -      (o o)        :(o o):  .    /(o o)\      - (o o) -       (o o)        :(o o):  .     (o o)      -  (OXO)  -  
ooO--(_)--Ooo-ooO--(_)--Ooo--ooO'(_)--Ooo------------(_)--------ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--`o'--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo-

]]--

--[[
    
     c  c         oo_        ))          ()_()(o)__(o)wW  Ww   c  c  wWw  wWw W  W   wW  Ww wWw ()_()  
     (OO)   /)   /  _)-<    (o0)-.   /)  (O o)(__  __)(O)(O)   (OO)  (O)  (O)(O)(O)  (O)(O) (O)_(O o)  
   ,'.--.)(o)(O) \__ `.      | (_))(o)(O) |^_\  (  )   (..)  ,'.--.) / )  ( \  ||     (..)  / __)|^_\  
  / //_|_\ //\\     `. |     | .-'  //\\  |(_))  )(     ||  / //_|_\/ /    \ \ | \     ||  / (   |(_)) 
  | \___  |(__)|    _| |     |(    |(__)| |  /  (  )   _||_ | \___  | \____/ | |  `.  _||_(  _)  |  /  
  '.    ) /,-. | ,-'   |      \)   /,-. | )|\\   )/   (_/\_)'.    ) '. `--' .`(.-.__)(_/\_)\ \_  )|\\  
    `-.' -'   ''(_..--'       (   -'   ''(/  \) (             `-.'    `-..-'   `-'          \__)(/  \) 

    
.____                                        __                         
|    |    ____   ______   ____  ____   _____/  |________   ____   ______
|    |  _/ __ \ /  ___/ _/ ___\/ __ \ /    \   __\_  __ \_/ __ \ /  ___/
|    |__\  ___/ \___ \  \  \__\  ___/|   |  \  |  |  | \/\  ___/ \___ \ 
|_______ \___  >____  >  \___  >___  >___|  /__|  |__|    \___  >____  >
        \/   \/     \/       \/    \/     \/                  \/     \/ 

]]--
ballFixe = {}
ballFixe.x = 400
ballFixe.y = 300
ballFixe.r = 30
ballFixe.color = {0,2,1}

ballMobile = {}
ballMobile.x = nil
ballMobile.y = nil
ballMobile.r = 30
ballMobile.color = {3,1,0}

ballMid = {}
ballMid.x = nil
ballMid.y = nil
ballMid.r = 20
ballMid.color = {1,0,0}

ballMid2 = {}
ballMid2.x = nil
ballMid2.y = nil
ballMid2.r = 10
ballMid2.color = {1,0,2}


function mid(xA,yA,xB,yB)
    local xI = (xA+xB)/2
    local yI = (yA+yB)/2
    return xI,yI
end

function love.load()
end

function love.update(dt)
    ballMobile.x,ballMobile.y = love.mouse.getPosition()
    ballMid.x,ballMid.y = mid(ballFixe.x,ballFixe.y,ballMobile.x,ballMobile.y)
    ballMid2.x,ballMid2.y = mid(ballMid.x,ballMid.y,ballMobile.x,ballMobile.y)
end

function love.draw()
    love.graphics.setColor(ballFixe.color)
    love.graphics.circle("fill",ballFixe.x,ballFixe.y,ballFixe.r)

    love.graphics.setColor(ballMid.color)
    love.graphics.circle("fill",ballMid.x,ballMid.y,ballMid.r)

    love.graphics.setColor(ballMid2.color)
    love.graphics.circle("fill",ballMid2.x,ballMid2.y,ballMid2.r)

    love.graphics.setColor(ballMobile.color)
    love.graphics.circle("fill",ballMobile.x,ballMobile.y,ballMobile.r)

   
end