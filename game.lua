Game = Class:extend()

function Game:new()
    track = Track()
end

function Game:update(dt)
    track:update(dt)
end

function Game:draw()
    track:draw()
end
