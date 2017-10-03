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
	tiles = {"electrodust_dust_off_straight.png","electrodust_dust_off_curved.png","electrodust_dust_off_tjunction.png","electrodust_dust_off_crossing.png"},
	drawtype = "raillike",
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = "electrodust:dust",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("electrodust:dust_on", {
	description = "Dust On",
	tiles = {"electrodust_dust_on_straight.png","electrodust_dust_on_curved.png","electrodust_dust_on_tjunction.png","electrodust_dust_on_crossing.png"},
	drawtype = "raillike",
	light_source = 14,
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = "electrodust:dust",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
