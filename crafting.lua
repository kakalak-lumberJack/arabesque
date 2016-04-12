--crafting recipes
minetest.register_craft({
        output = "arabesque:sandstone_dessert_stone_star 2",
        recipe = {
              {"", "", ""},
              {"default:stone", "default:dessert_stone", ""},
              {"", "", ""},
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
