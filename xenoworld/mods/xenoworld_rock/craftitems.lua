-- `TRANSLATE` is used for xgettext search
local TRANSLATE = this_mod.translator

--
-- Craftitem registry
--

minetest.register_craftitem("xenoworld_rock:rock_piece", {
    description = TRANSLATE("Rock Piece"),
    inventory_image = "rock_piece.png",
    stack_max = 64*8,
})
