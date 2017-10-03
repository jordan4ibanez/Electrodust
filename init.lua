dofile(minetest.get_modpath("electrodust").."/ore.lua")
--------------------------------------------------------

--dust
minetest.register_craftitem("electrodust:dust", {
description = "Electro Dust",
inventory_image = "electrodust_dust.png",
})


--dust wiring

minetest.register_node("electrodust:dust_off", {
	description = "Dust Off",
	tiles = {"carts_rail_straight.png","carts_rail_curved.png","carts_rail_crossing.png","carts_rail_t_junction.png"},
	drawtype = "raillike",
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	--drop = 'default:cobble',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
