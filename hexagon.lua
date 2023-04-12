Hexagon = Class:extend()

function Hexagon:new()
    self.xCenter = false -- coordenada x do centro do primeiro hexágono
    self.yCenter = false -- coordenada y dos centros dos hexágonos
    self.sides = 6       -- número de lados dos hexágonos
    self.radius = 50     -- raio dos hexágonos
    self.vertices = {}   -- tabela para armazenar os pontos que formam o primeiro hexágono
end

function Hexagon:update(dt)

end

function Hexagon:draw()
    if self.xCenter and self.yCenter then
        for i = 1, self.sides do
            local angle = math.pi * 2 * (i / self.sides) - math.pi / 2 -- ângulo em radianos
            local vx = self.xCenter + self.radius * math.cos(angle)    -- coordenada x do ponto
            local vy = self.yCenter + self.radius * math.sin(angle)    -- coordenada y do ponto
            table.insert(self.vertices, vx)                            -- adiciona a coordenada x do ponto na tabela de pontos
            table.insert(self.vertices, vy)                            -- adiciona a coordenada y do ponto na tabela de pontos
        end

        love.graphics.polygon("fill", self.vertices)
    end
end

function Hexagon:getLeftSideHexagon()

end
