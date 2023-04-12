Track = Class:extend()

function Track:new()
    hexagon = Hexagon()
    hexagon.xCenter = 100
    hexagon.yCenter = 100
    self.raceTrack = {
        { 1, 0, 1 },
        { 0, 1, 0 },
        { 1, 0, 1 }
    }
end

function Track:update(dt)
    hexagon:update(dt)
end

function Track:draw()
    hexagon:draw()
end
