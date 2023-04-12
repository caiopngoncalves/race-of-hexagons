Class = require "classic"
require "game"
require "hexagon"
require "track"
require "car"


function love.load()
    love.window.setMode(800, 800)
    game = Game()
end

function love.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
end
