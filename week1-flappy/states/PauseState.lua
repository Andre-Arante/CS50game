PauseState = Class{__includes = BaseState}

function PauseState:update(dt)
    if love.keyboard.wasPressed('p') then
        gStateMachine:change('play')
    end
end

function PauseState:render()
    -- render count big in the middle of the screen
    love.graphics.setFont(hugeFont)
    love.graphics.printf('Paused', 0, 120, VIRTUAL_WIDTH, 'center')
end