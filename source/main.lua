import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/animation"

import "scripts/game/biscuit"
import "scripts/player/player"
import "scripts/player/turnOrder"
import "scripts/game/playerDisplay"

local pd <const> = playdate
local gfx <const> = pd.graphics

local player1 = Player:init("Player 1")
local player2 = Player:init("Player 2")
dbtable = {}

for i = 1, 4 do
	player1.biscuits[i] = Biscuit:add()
	player2.biscuits[i] = Biscuit:add()
 end

currentPlayer = player1
currentName = currentPlayer.name
debug = 'Hello'
count = 0
createScoreDisplay()
while debug == 'Hello' do
	
	updateDisplay(currentName)
	--takeTurn(currentPlayer)
	currentPlayer = switchTurns(currentPlayer)
	count+=1
	
	debug = 'Goodbye'
end

function pd.update()
	--gfx.sprite.update()
	--pd.timer.updateTimers()
	
end