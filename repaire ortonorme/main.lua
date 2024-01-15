function love.load()
    love.mouse.setVisible(false)
end
function love.update(dt)
    mouseX,mouseY = love.mouse.getPosition()
end
function love.draw()
    love.graphics.setLineWidth(1)
    love.graphics.line(mouseX,mouseY+10,mouseX,0)
    love.graphics.line(mouseX+10,mouseY,0,mouseY)

    if mouseX>400 then
        love.graphics.print(mouseX,mouseX-30,5)
    else
        love.graphics.print(mouseX,mouseX+5-5)
    end
    if mouseX>400 then
        love.graphics.print(mouseY,5,mouseY-30)
    else
        love.graphics.print(mouseY,5,mouseY+5)
    end
    love.graphics.print('('..mouseX..','..mouseY..')',mouseX+10,mouseY+10)

end