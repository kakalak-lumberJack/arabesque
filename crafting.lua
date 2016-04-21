--crafting recipes
minetest.register_craft({
        output = "arabesque:lantern 4",
        recipe = {
              {"", "default:iron_lump", ""},
              {"default:glass", "default:torch", "default:glass"},
              {"default:iron_lump", "default:iron_lump", "default:iron_lump"},
        }
})

--star pattern

minetest.register_craft({
        output = "arabesque:sandstone_desert_stone_star 4",
        recipe = {
              {"default:desert_stone", "", ""},
              {"default:desert_stone","default:sandstone", "default:desert_stone"},
              {"",  "default:desert_stone", ""},
        }
})

minetest.register_craft({
        output = "arabesque:desert_stone_stone_star 4",
        recipe = {
              {"default:stone", "", ""},
              {"default:stone","default:desert_stone", "default:stone"},
              {"",  "default:stone", ""},
        }
})

minetest.register_craft({
        output = "arabesque:slate_brick_obsidian_star 4",
        recipe = {
              {"default:obsidian", "", ""},
              {"default:obsidian","darkage:slate_brick", "default:obsidian"},
              {"",  "default:obsidian", ""},
        }
})

--mosaic nodes

minetest.register_craft({
        output = "arabesque:mosaic 4",
        recipe = {
                {"dye:blue", "darkage:adobe", "dye:dark_green"},
                {"darkage:adobe", "dye:white", "darkage:adobe"},
                {"dye:red", "darkage:adobe", "dye:yellow"}
        }
})

minetest.register_craft({
        output = "arabesque:mosaic_center",
        recipe =  {
                {"dye:red", "dye:orange","dye:yellow"},
                {"", "darkage:adobe", ""},
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
        output = "arabesque:sandstone_desert_stone_knot 4",
        recipe = {
              {"default:desert_stone", "", "default:desert_stone"},
              {"", "default:sandstone", ""},
              {"default:desert_stone", "", "default:desert_stone"}
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
