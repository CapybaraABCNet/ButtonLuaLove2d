local randomNumber = nil  
local buttonX, buttonY, buttonWidth, buttonHeight = 150, 200, 200, 50

function love.load()
  math.randomseed(os.time())
end

function love.draw()
  love.graphics.setColor(0.2, 0.6, 0.8)
  love.graphics.rectangle("fill", buttonX, buttonY, buttonWidth, buttonHeight)
  love.graphics.setColor(1, 1, 1) 
  love.graphics.printf("Random Number", buttonX, buttonY + 15, buttonWidth, "center")
  
  if randomNumber then
    love.graphics.setColor(1,1,1)
    love.graphics.printf("Random number is: " .. randomNumber, 0, 300, love.graphics.getWidth(), "center")
  end
end

function love.mousepressed(x, y, button)
    -- Проверяем, нажата ли кнопка мыши и находится ли курсор над кнопкой
    if button == 1 then -- Левый клик мыши
        if x >= buttonX and x <= buttonX + buttonWidth and y >= buttonY and y <= buttonY + buttonHeight then
            randomNumber = math.random(1, 100) -- Генерация случайного числа от 1 до 100
        end
    end
end

