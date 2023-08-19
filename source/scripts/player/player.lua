import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/animation"

local pd <const> = playdate
local gfx <const> = pd.graphics

--class('Player').extends()

--function Player:init(name)
   --name = name
   --biscuits = {}
   --print(name)
   
--end

local M = {}

Player = {
   name = "",
   biscuits = {}
}

function Player:init(name)
   local o = {
      name = name,
      biscuits = {}
   }
   setmetatable(o, self)
   self.__index = self
   return o
end


return M