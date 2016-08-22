minetest.register_ore ({
      ore_type = "sheet",
      ore = "arabesque:turquoise_block",
      wherein = "default:stone",
      height_min = -31000,
      height_max = 5,
      noise_threshold = 0.5,
      noise_params = {
              offset = 0,
              scale = 1,
              spread = {x = 100, y = 100, z = 100},
              seed = 23,
              octaves = 3,
              persist = 0.70,
              },
      column_height_max = 6,
      column_height_min = 2
})


minetest.register_ore ({
      ore_type = "sheet",
      ore = "arabesque:lapis_lazuli_block",
      wherein = "default:stone",
      height_min = -31000,
      height_max = 0,
      noise_threshold = 0.5,
      noise_params = {
              offset = 0,
              scale = 1,
              spread = {x = 100, y = 100, z = 100},
              seed = 23,
              octaves = 3,
              persist = 0.70,
              },
      column_height_max = 6,
      column_height_min = 2
})
