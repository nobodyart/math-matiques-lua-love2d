
   
-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end



function distanceInf(xA,yA,xB,yB)
  return math.max(math.abs(xB-xA),math.abs(yB-yA))
end



boule = {}
boule.x=400
boule.y=300
boule.r=40
boule.color1={1,0,0}
boule.color2={0,1,0}
boule.color = boule.color1

perso = {}
perso.x=nil
perso.y=nil
perso.r=50
perso.color={1,1,1}

function draw(sprite)
  love.graphics.setColor(sprite.color)
  for i = sprite.x - sprite.r,sprite.x+sprite.r do
    for  j = sprite.y - sprite.r, sprite.y+sprite.r do
      if distanceInf(sprite.x,sprite.y,i,j)<=sprite.r then
        love.graphics.line(sprite.x,sprite.y,i,j)
      end
      
    end
    
  end
  
end

function love.load()
  
  largeur_ecran = love.graphics.getWidth()
  hauteur_ecran = love.graphics.getHeight()
  
end

function love.update(dt)
  
  perso.x=love.mouse.getX()
  perso.y=love.mouse.getY()
  
  if distanceInf(perso.x,perso.y,boule.x,boule.y) < boule.r+perso.r then
    boule.color = boule.color1
  else
    boule.color=boule.color2
  end
  

end

function love.draw()
    draw(boule)
    draw(perso)
    
end
function love.keypressed(key)
 
  
end


  
