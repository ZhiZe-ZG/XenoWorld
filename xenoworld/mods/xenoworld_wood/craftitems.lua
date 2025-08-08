-- `TRANSLATE` is used for xgettext search
local TRANSLATE = xenoworld_wood.translator

--
-- Craftitem registry
--


core.register_craftitem("xenoworld_wood:wood_piece", {
	description = TRANSLATE("Wood Piece"),
	inventory_image = "xenoworld_wood_wood_piece.png",
	stack_max = 64*8,
})