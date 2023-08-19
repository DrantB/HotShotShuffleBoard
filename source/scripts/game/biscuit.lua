local pd <const> = playdate
local gfx <const> = pd.graphics

class('Biscuit').extends(gfx.sprite)

function Biscuit:init(x,y)

    local mySprite = gfx.sprite.new()
    local r = 20
    mySprite:setSize(r*2,r*2)
    function mySprite:draw()
        gfx.fillCircleAtPoint(r,r,r)
    end
    --mySprite:setCollideRect(0, 0, r*2)
    mySprite:moveTo(x, y)
    mySprite:add()
    self.xVelocity = 0
    self.yVelocity = 0
end

function Biscuit:add(owner)
    local o = {
        x = 200,
        y = 200,
        thrown = 0
     }
     setmetatable(o, self)
     self.__index = self
     return o
end

function Biscuit:coillisionResponse()
end

function Biscuit:throw(biscuit)
    biscuit:moveTo(350,200)
    biscuit:add()
    biscuit.thrown = 1
end

function Biscuit:update()
--Needed to update the sprite
end