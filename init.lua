--[[
GloopBlocks
Originally written by GloopMaster

Maintained by VanessaE.

--]]

gloopblocks = {}

local MP = core.get_modpath(core.get_current_modname())
local S = core.get_translator(core.get_current_modname())

dofile(MP.."/main.lua")
dofile(MP.."/crafts.lua")
dofile(MP.."/lava-handling.lua")

print(S("Gloopblocks Loaded!"))
