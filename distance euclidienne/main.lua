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
    
 ______     .-./`)    .-'''-. ,---------.    ____    ,---.   .--.    _______      .-''-.              .-''-.    ___    _     _______    .---.    .-./`)  ______     .-./`)     .-''-.  ,---.   .--.,---.   .--.    .-''-.          
|    _ `''. \ .-.')  / _     \\          \ .'  __ `. |    \  |  |   /   __  \   .'_ _   \           .'_ _   \ .'   |  | |   /   __  \   | ,_|    \ .-.')|    _ `''. \ .-.')  .'_ _   \ |    \  |  ||    \  |  |  .'_ _   \         
| _ | ) _  \/ `-' \ (`' )/`--' `--.  ,---'/   '  \  \|  ,  \ |  |  | ,_/  \__) / ( ` )   '         / ( ` )   '|   .'  | |  | ,_/  \__),-./  )    / `-' \| _ | ) _  \/ `-' \ / ( ` )   '|  ,  \ |  ||  ,  \ |  | / ( ` )   '        
|( ''_'  ) | `-'`"`(_ o _).       |   \   |___|  /  ||  |\_ \|  |,-./  )      . (_ o _)  |        . (_ o _)  |.'  '_  | |,-./  )      \  '_ '`)   `-'`"`|( ''_'  ) | `-'`"`. (_ o _)  ||  |\_ \|  ||  |\_ \|  |. (_ o _)  |        
| . (_) `. | .---.  (_,_). '.     :_ _:      _.-`   ||  _( )_\  |\  '_ '`)    |  (_,_)___|        |  (_,_)___|'   ( \.-.|\  '_ '`)     > (_)  )   .---. | . (_) `. | .---. |  (_,_)___||  _( )_\  ||  _( )_\  ||  (_,_)___|        
|(_    ._) ' |   | .---.  \  :    (_I_)   .'   _    || (_ o _)  | > (_)  )  __'  \   .---.        '  \   .---.' (`. _` /| > (_)  )  __(  .  .-'   |   | |(_    ._) ' |   | '  \   .---.| (_ o _)  || (_ o _)  |'  \   .---.        
|  (_.\.' /  |   | \    `-'  |   (_(=)_)  |  _( )_  ||  (_,_)\  |(  .  .-'_/  )\  `-'    /         \  `-'    /| (_ (_) _)(  .  .-'_/  )`-'`-'|___ |   | |  (_.\.' /  |   |  \  `-'    /|  (_,_)\  ||  (_,_)\  | \  `-'    /        
|       .'   |   |  \       /     (_I_)   \ (_ o _) /|  |    |  | `-'`-'     /  \       /           \       /  \ /  . \ / `-'`-'     /  |        \|   | |       .'   |   |   \       / |  |    |  ||  |    |  |  \       /         
'-----'`     '---'   `-...-'      '---'    '.(_,_).' '--'    '--'   `._____.'    `'-..-'             `'-..-'    ``-'`-''    `._____.'   `--------`'---' '-----'`     '---'    `'-..-'  '--'    '--''--'    '--'   `'-..-'          
                                                                                                                                                                                                                                   

]]--

--function de distance euclidienne
function distance(xA,yA,xB,yB)
    --math.sqrt racine carré de...
    return math.sqrt((xB-xA)^2+(yB-yA)^2)
end

boule={}
boule.x=400
boule.y=300
boule.r=40
boule.color1={1,0,0}
boule.color2={0,0,1}
boule.currentCol=boule.color1

boule.draw= function()
    love.graphics.setColor(boule.currentCol)
    love.graphics.circle("fill",boule.x,boule.y,boule.r)
end

function love.load()

end

function love.update(dt)
  mouseX = love.mouse.getX()
  mouseY = love.mouse.getY()

  if distance(mouseX,mouseY,boule.x,boule.y)<boule.r then
    boule.currentCol=boule.color1
  else
    boule.currentCol=boule.color2
  end
end

function love.draw()
   boule.draw()
end