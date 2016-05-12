--stairs_plus compatible blocks
local stair_nodes = {


        ["mosaic"] = {
                description = "tile mosaic",
                tiles = {"arabesque_mosaic.png"},
                is_ground_content = false,
                groups = {cracky = 3},
                sounds = default.node_sound_stone_defaults(),
        },

        ["mosaic_center"] = {
                description = "tile mosaic center",
                tiles = {"arabesque_mosaic_center.png"},
                is_ground_content = false,
                groups = {cracky = 3},
                sounds = default.node_sound_stone_defaults(),
        },

        ["acacia_pine_checker"] = {
                description = "acacia pine checkered floor",
                tiles = {
                  "arabesque_acacia_pine_checker_top_right_left_bottom.png",
                  "arabesque_acacia_pine_checker_top_right_left_bottom.png",
                  "arabesque_acacia_pine_checker_top_right_left_bottom.png",
                  "arabesque_acacia_pine_checker_top_right_left_bottom.png",
                  "arabesque_acacia_pine_checker_front_back.png",
                  "arabesque_acacia_pine_checker_front_back.png",
                },
                is_ground_content = false,
                groups = {choppy = 3},
                sounds = default.node_sound_wood_defaults(),
        },


        ["floral_obsidian_glass"] = {
		            description = "Floral Obsidian Glass",
		            drawtype = "glasslike_framed_optional",
		            tiles = {"arabesque_floral_obsidian_glass.png"},
		            paramtype = "light",
                is_ground_content = false,
		            sunlight_propagates = true,
		            groups = {cracky = 3, oddly_breakable_by_hand = 3},
		            sounds = default.node_sound_glass_defaults(),
        }
}
---stairs plus support
for name, definition in pairs(stair_nodes) do
        minetest.register_node("arabesque:" .. name, definition)
end

--Moreblocks support
if minetest.get_modpath("moreblocks") ~= nil then
	   for name, definition in pairs(stair_nodes) do
		          -- Make a shallow copy of the definition
		          local stairs_definition = {}
		          for k, v in pairs(definition) do
			               stairs_definition[k] = v
		          end
		          -- Make a shallow copy of the groups
		          local stairs_groups = { not_in_craft_guide = 1 }
		          if (stairs_definition["groups"] ~= nil) then
			               for k, v in pairs(stairs_definition["groups"]) do
                            stairs_groups[k] = v
			              end
		          end
		          stairs_definition["groups"] = stairs_groups
		          stairsplus:register_all("arabesque", name, "arabesque:" .. name,
              stairs_definition)
	end
end






--register crafts

minetest.register_craft({
        output = "arabesque:mosaic 4",
        recipe = {
                {"dye:blue", "moreblocks:stone_tile", "dye:dark_green"},
                {"moreblocks:stone_tile", "dye:white", "moreblocks:stone_tile"},
                {"dye:red", "moreblocks:stone_tile", "dye:yellow"}
        }
})

minetest.register_craft({
        output = "arabesque:mosaic_center",
        recipe =  {
                {"dye:red", "dye:orange","dye:yellow"},
                {"", "moreblocks:stone_tile", ""},
                {"dye:dark_green", "dye:blue", "dye:white"}
        }
})

--other nodes

minetest.register_craft({
        output = "arabesque:acacia_pine_checker 4",
        recipe = {
                {"", "", ""},
                {"default:acacia_wood", "default:pine_wood", ""},
                {"default:pine_wood", "default:acacia_wood", ""}
        }
})


minetest.register_craft({
        output = "arabesque:floral_obsidian_glass 9",
        recipe = {
              {"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
              {"default:obsidian_shard", "default:obsidian_glass", "default:obsidian_shard"},
              {"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"}
        }
})
