--crafting recipes
minetest.register_craft({
        output = "arabesque:sandstone_desert_stone_star 4",
        recipe = {
              {"default:desert_stone", "", ""},
              {"default:desert_stone","default:sandstone", "default:desert_stone"},
              {"",  "default:desert_stone", ""},
        }
})

minetest.register_craft({
        output = "arabesque:acacia_pine_checker 4",
        recipe = {
                {"", "", ""},
                {"default:acacia_wood", "default:pine_wood", ""},
                {"default:pine_wood", "default:acacia_wood", ""}
        }
})

minetest.register_craft({
        output = "arabesque:sandstone_desert_stone_knot 4",
        recipe = {
              {"default:desert_stone", "", "default:desert_stone"},
              {"", "default:sandstone", ""},
              {"default:desert_stone", "", "default:desert_stone"}
        }
})

minetest.register_craft({
        output = "arabesque:floral_obsidian_glass 9"
        recipe = {
              {"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
              {"default:obsidian_shard", "default:obsidian_glass", "default:obsidian_shard"},
              {"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"}
        }
})
