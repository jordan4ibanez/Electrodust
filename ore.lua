--ore
minetest.register_node("electrodust:stone_with_electrodust", {
	description = "Electrodust Ore",
	tiles = {"default_stone.png^electrodust_ore.png"},
	groups = {cracky = 2},
	--do drops like this to give random number of drops
	drop = {
            max_items = 6,  -- Maximum number of items to drop.
            items = { -- Choose max_items randomly from this list.
                {
                    items = {"electrodust:dust"},  -- Items to drop.
                    rarity = 2,  -- Probability of dropping is 1 / rarity.
                },
                {
                    items = {"electrodust:dust"},  -- Items to drop.
                    rarity = 2,  -- Probability of dropping is 1 / rarity.
                },
                {
                    items = {"electrodust:dust"},  -- Items to drop.
                    rarity = 2,  -- Probability of dropping is 1 / rarity.
                },
                {
                    items = {"electrodust:dust"},  -- Items to drop.
                    rarity = 2,  -- Probability of dropping is 1 / rarity.
                },
                {
                    items = {"electrodust:dust"},  -- Items to drop.
                    rarity = 2,  -- Probability of dropping is 1 / rarity.
                },
                {
                    items = {"electrodust:dust"},  -- Items to drop.
                    rarity = 2,  -- Probability of dropping is 1 / rarity.
                },
            },
        },
	sounds = default.node_sound_stone_defaults(),
	light_source = 14,
	--particles when digging
	on_punch = function(pos, node, player, pointed_thing)
			minetest.add_particlespawner({
				amount = 70,
				time = 5,
			--  ^ If time is 0 has infinite lifespan and spawns the amount on a per-second base
				minpos = {x=pos.x-0.75, y=pos.y-0.75, z=pos.z-0.75},
				maxpos = {x=pos.x+0.75, y=pos.y+0.75, z=pos.z+0.75},
				minvel = {x=0, y=0, z=0},
				maxvel = {x=0, y=0, z=0},
				minacc = {x=-0.25, y=0.1, z=-0.25},
				maxacc = {x=0.25, y=0.25, z=0.25},
				minexptime = 1,
				maxexptime = 2,
				minsize = 1,
				maxsize = 2,
			--  ^ The particle's properties are random values in between the bounds:
			--  ^ minpos/maxpos, minvel/maxvel (velocity), minacc/maxacc (acceleration),
			--  ^ minsize/maxsize, minexptime/maxexptime (expirationtime)
				collisiondetection = true,
			--  ^ collisiondetection: if true uses collision detection
				collision_removal = true,
			--  ^ collision_removal: if true then particle is removed when it collides,
			--  ^ requires collisiondetection = true to have any effect
				--attached = player,
			--  ^ attached: if defined, particle positions, velocities and accelerations
			--  ^ are relative to this object's position and yaw.
				vertical = false,
			--  ^ vertical: if true faces player using y axis only
				texture = "electrodust_ore_particle.png",
				animation = {
						type = "vertical_frames",
						aspect_w = 3,
						-- ^ specify width of a frame in pixels
						aspect_h = 3,
						-- ^ specify height of a frame in pixels
						length = 0.3,
						-- ^ specify full loop length
					},
			--  ^ Uses texture (string)
				--playername = "singleplayer"
			--  ^ Playername is optional, if specified spawns particle only on the player's client
		})
	end,
	--particle puff when it's dug
	after_destruct = function(pos, oldnode)
			minetest.add_particlespawner({
				amount = 200,
				time = 0.1,
			--  ^ If time is 0 has infinite lifespan and spawns the amount on a per-second base
				minpos = {x=pos.x-0.2, y=pos.y-0.2, z=pos.z-0.2},
				maxpos = {x=pos.x+0.2, y=pos.y+0.2, z=pos.z+0.2},
				minvel = {x=-1, y=-1, z=-1},
				maxvel = {x=1, y=1, z=1},
				minacc = {x=-0.25, y=0.1, z=-0.25},
				maxacc = {x=0.25, y=0.25, z=0.25},
				minexptime = 1,
				maxexptime = 2,
				minsize = 1,
				maxsize = 2,
			--  ^ The particle's properties are random values in between the bounds:
			--  ^ minpos/maxpos, minvel/maxvel (velocity), minacc/maxacc (acceleration),
			--  ^ minsize/maxsize, minexptime/maxexptime (expirationtime)
				collisiondetection = true,
			--  ^ collisiondetection: if true uses collision detection
				collision_removal = true,
			--  ^ collision_removal: if true then particle is removed when it collides,
			--  ^ requires collisiondetection = true to have any effect
				--attached = player,
			--  ^ attached: if defined, particle positions, velocities and accelerations
			--  ^ are relative to this object's position and yaw.
				vertical = false,
			--  ^ vertical: if true faces player using y axis only
				texture = "electrodust_ore_particle.png",
				animation = {
						type = "vertical_frames",
						aspect_w = 3,
						-- ^ specify width of a frame in pixels
						aspect_h = 3,
						-- ^ specify height of a frame in pixels
						length = 0.3,
						-- ^ specify full loop length
					},
			--  ^ Uses texture (string)
				--playername = "singleplayer"
			--  ^ Playername is optional, if specified spawns particle only on the player's client
		})
	end,
})



minetest.register_ore({
		ore_type       = "scatter",
		ore            = "electrodust:stone_with_electrodust",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 9,
		clust_size     = 3,
		y_min          = 1025,
		y_max          = 31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "electrodust:stone_with_electrodust",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "electrodust:stone_with_electrodust",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})
