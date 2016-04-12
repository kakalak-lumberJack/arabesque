local stair_nodes = {
        ["sandstone_desert_stone_star"] = {
                description = "Sandstone Desert Stone Star",
                tiles = {"arabesque_sandstone_desert_stone_star.png"},
                groups = {cracky = 2}
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
                groups = {choppy = 3}
        },
        ["sandstone_desert_stone_knot"] = {
                description = "Sandstone Desert Stone Knot",
                tiles = {"arabesque_sandstone_desert_stone_knot.png"},
                groups = {cracky =2}
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
dofile(minetest.get_modpath("arabesque").."/lighting.lua")
