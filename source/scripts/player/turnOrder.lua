import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/animation"

import "scripts/player/player"
import "scripts/game/biscuit"
import "scripts/game/playerDisplay"

local pd <const> = playdate
local gfx <const> = pd.graphics

function takeTurn(player)

    local biscuitToThrow = nil
    local nameToPass = player.name
   
    updateDisplay(player.name)

end
--     for i, biscuit in ipairs(player.biscuits) do
--        -- Prompt player for target position (need to implement this)
--        if biscuit.thrown == 0 then
--         Biscuit:init(biscuit.x,biscuit.y)
--         biscuitToThrow = biscuit
--         break
--        end 
--     end

--     if biscuitToThrow then
      
--        if pd.buttonJustPressed(pd.kButtonA) then
--        -- Perform the throw
--        Biscuit:throw(biscuitToThrow)
--         end
--     end
-- end

function switchTurns(currentPlayer)
    if currentPlayer == player1 then
        currentPlayer = player2
     else
        currentPlayer = player1
     end
end