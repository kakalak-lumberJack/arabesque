local sound_wood = default.node_sound_wood_defaults()
local sound_stone = default.node_sound_stone_defaults()
local sound_glass = default.node_sound_glass_defaults()
local sound_leaves = default.node_sound_leaves_defaults()

arabesque = {}

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


function arabesque.register_engraving(engraved_name, engraved_description, engraved_texture)

end

--register engraving nodes

arabesque.register_engraving("desert_stone_knot", "desert_stone knot engraved pattern",
"arabesque_desert_stone_knot.png")








dofile(minetest.get_modpath("arabesque").."/crafting.lua")
