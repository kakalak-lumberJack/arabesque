local sound_wood = default.node_sound_wood_defaults()
local sound_stone = default.node_sound_stone_defaults()
local sound_glass = default.node_sound_glass_defaults()
local sound_leaves = default.node_sound_leaves_defaults()

minetest.register_node("arabesque:lantern", {
        description = "Lantern",
        drawtype = "plantlike",
        tiles = {"arabesque_lantern.png"},
        paramtype = "light",
        light_source = LIGHT_MAX-1,
        is_ground_content = false,
        groups = {snappy = 3, oddly_breakable_by_hand = 3},
})


arabesque:register_engraving = function(node_name, engraved_description, engraved_texture)

      local node_type = {
            description = engraved_description
            drawtype = "nodebox",
            tiles = {engraved_texture},
            paramtype = "light",
            paramtype2 = "facedir",
            node_box = {
                    type = "fixed",
                    fixed = {-0.5, -0.5, -0.5, 0.5, -0.44, 0.5}
                    },
            on_place = minetest.rotate_node,
            groups = {cracky = 2},
            sounds = default.node_sound_stone_defaults(),
            }


        minetest.register_node (arabesque:" .. node_name, engraved description)

end

--register engraving nodes

arabesque.register_engraving ("desert_stone_knot", "Desert Stone Knot Pattern", arabesque_desert_stone_knot.png)





--stairs_plus compatible blocks
local stair_nodes = {

        ["sandstone_desert_stone_star"] = {
                description = "Sandstone Desert Stone Star",
                tiles = {"arabesque_sandstone_desert_stone_star.png"},
                is_ground_content = false,
                groups = {cracky = 2},
                sounds = default.node_sound_stone_defaults(),
        },

        ["desert_stone_stone_star"] = {
                description = "Desert Stone Stone Star",
                tiles = {"arabesque_desert_stone_stone_star.png"},
                is_ground_content = false,
                groups = {cracky = 2},
                sounds = default.node_sound_stone_defaults(),
        },

        ["slate_brick_obsidian_star"] = {
                description = "Slate Brick Obsidian Star",
                tiles = {"arabesque_slate_brick_obsidian_star.png"},
                is_ground_content = false,
                groups = {cracky = 2},
                sounds = default.node_sound_stone_defaults(),
        },

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

        ["sandstone_desert_stone_knot"] = {
                description = "Sandstone Desert Stone Knot",
                tiles = {"arabesque_sandstone_desert_stone_knot.png"},
                is_ground_content = false,
                groups = {cracky = 2},
                sounds = default.node_sound_stone_defaults(),
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


dofile(minetest.get_modpath("arabesque").."/crafting.lua")
