-- A common data structure used in the mod
this_mod = {}

-- Load translator support
this_mod.translator = core.get_translator(core.get_current_modname())

-- Load files
this_mod.path = core.get_modpath(core.get_current_modname())

dofile(this_mod.path.."/tool.lua")
-- dofile(this_mod.path.."/items.lua")
dofile(this_mod.path.."/crafting.lua")
