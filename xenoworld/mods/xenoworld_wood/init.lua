-- A common data structure used in the mod
xenoworld_wood = {}

-- Load translator support
xenoworld_wood.translator = core.get_translator(core.get_current_modname())

-- Load files
xenoworld_wood.path = core.get_modpath(core.get_current_modname())

dofile(xenoworld_wood.path.."/craftitems.lua")
dofile(xenoworld_wood.path.."/nodes.lua")
dofile(xenoworld_wood.path.."/crafting.lua")
