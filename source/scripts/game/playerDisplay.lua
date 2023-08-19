local pd <const> = playdate
local gfx <const> = playdate.graphics

local scoreSprite

function createScoreDisplay()
    scoreSprite = gfx.sprite.new()
    updateDisplay()
    scoreSprite:setCenter(0,0)
    scoreSprite:moveTo(320,4)
    scoreSprite:add()
end

function updateDisplay(nameToDisplay)
    local scoreText = nameToDisplay
    local textWidth, textHeight = gfx.getTextSize(scoreText)
    local scoreImage = gfx.image.new(textWidth, textHeight)
    gfx.pushContext(scoreImage)
        gfx.drawText(scoreText, 0, 0)
    gfx.popContext()
    scoreSprite:setImage(scoreImage)
end