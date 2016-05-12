local sound_wood = default.node_sound_wood_defaults()
local sound_stone = default.node_sound_stone_defaults()
local sound_glass = default.node_sound_glass_defaults()
local sound_leaves = default.node_sound_leaves_defaults()





--misc nodes, craft itmes

minetest.register_node("arabesque:lantern", {
        description = "Lantern",
        drawtype = "plantlike",
        tiles = {"arabesque_lantern.png"},
        paramtype = "light",
        light_source = LIGHT_MAX-1,
        is_ground_content = false,
        groups = {snappy = 3, oddly_breakable_by_hand = 3},
})

minetest.register_craftitem("arabesque:chisel", {
        description = "Chisel",
        inventory_image = "arabesque_chisel.png"
})


--crafts
minetest.register_craft({
        output = "arabesque:lantern 4",
        recipe = {
              {"", "default:iron_lump", ""},
              {"default:glass", "default:torch", "default:glass"},
              {"default:iron_lump", "default:iron_lump", "default:iron_lump"},
        }
})

minetest.register_craft({
        output = "arabesque:chisel",
        recipe = {
          {"default:steel_ingot", ""},
          {"", "default:stick"}
        }

})







dofile(minetest.get_modpath("arabesque").."/stairs.lua")
dofile(minetest.get_modpath("arabesque").."/engraving.lua")
