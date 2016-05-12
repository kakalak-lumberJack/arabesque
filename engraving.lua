--funtion establish parameters of engraving-type nodes
local arabesque = {}

function arabesque.register_engraving(engraved_name, engraved_description, engraved_texture)
      minetest.register_node("arabesque:" .. engraved_name, {
              description = engraved_description,
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
      })
end

--register engraving nodes

arabesque.register_engraving("desert_stone_knot", "Engraved Desert Stone Knot Pattern",
"arabesque_desert_stone_knot.png")

arabesque.register_engraving("stone_knot", "Engraved Stone Knot Pattern",
"arabesque_stone_knot.png")

arabesque.register_engraving("obsidian_knot", "Engraved Obsidian Knot Pattern",
"arabesque_obsidian_knot.png")

arabesque.register_engraving("desert_stone_star", "Engraved Desert Stone Star Pattern",
"arabesque_desert_stone_star.png")

arabesque.register_engraving("stone_star", "Engraved Stone Star Pattern",
"arabesque_stone_star.png")

arabesque.register_engraving("obsidian_star", "Engraved Obsidian Star Pattern",
"arabesque_obsidian_star.png")



--crafts


minetest.register_craft({
        output = "arabesque:desert_stone_knot 8",
        recipe = {
                {"default:desert_stone", "", "default:desert_stone"},
                {"", "arabesque:chisel", ""},
                {"default:desert_stone", "", "default:desert_stone"}
        }
})

minetest.register_craft({
        output = "arabesque:stone_knot 8",
        recipe = {
              {"default:stone", "", "default:stone"},
              {"", "arabesque:chisel", ""},
              {"default:stone", "", "default:stone"}
        }
})

minetest.register_craft({
        output = "arabesque:obsidian_knot 8",
        recipe = {
              {"default:obsidian", "", "default:obsidian"},
              {"", "arabesque:chisel", ""},
              {"default:obsidian", "", "default:obsidian"}
        }
})


minetest.register_craft({
        output = "arabesque:desert_stone_star 8",
        recipe = {
              {"", "default:desert_stone", ""},
              {"default:desert_stone", "arabesque:chisel",  "default:desert_stone"},
              {"", "default:desert_stone", ""}
        }
})

minetest.register_craft({
        output = "arabesque:stone_star 8",
        recipe = {
              {"", "default:stone", ""},
              {"default:stone", "arabesque:chisel", "default:stone"},
              {"", "default:stone", ""}
        }
})

minetest.register_craft({
        output = "arabesque:obsidian_star 8",
        recipe = {
              {"", "default:obsidian", ""},
              {"default:obsidian", "arabesque:chisel", "default:obsidian"},
              {"", "default:obsidian", ""}
        }
})
