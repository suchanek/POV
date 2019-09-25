#include "colors.inc"
#include "metals.inc"

#declare Npng_obj = intersection {
    cylinder { <0,0,1> <0, .8, 1>, 1 }
    height_field
    {
     gif "logo_mono_invert.gif"
    water_level 0
    translate <-.5, .10, 0>
    scale <2, 2, 2>
    }
    pigment {BrightGold}
    texture
    {
     T_Gold_1B
    }
    rotate <-90, 0, 0>
}

#declare png_obj = intersection {
    cylinder { <0,0,1> <0, 1, 1>, 1 }
    height_field
    {
     gif "logo_gray.gif"
    water_level 0
    translate <-.5, .0, 0>
    scale <2, 4, 2>
    }
    texture
    {
     T_Gold_1A
    }
    rotate <-90, 0, 0>
}

#declare Opng_obj = intersection {
    cylinder { <0,0,1> <0, 1, 1>, 1 }
    height_field
    {
     gif "logo_mono.gif"
    water_level 0
    translate <-.5, .10, 0>
    scale <2, 2, 2>
    }
    pigment {BrightGold}
    rotate <-90, 0, 0>
}

