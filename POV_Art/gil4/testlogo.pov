
// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3
// Desc: Basic Scene Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3

#include "colors.inc"
#include "pipes.inc"
#include "textures.inc"
#include "colors.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "metals.inc"


global_settings
{
  assumed_gamma 1.8
}

// ----------------------------------------
camera
{
  location  <0.0, 20, -150.0>
  direction 1.5*z
  right     4/3*x
  look_at   <0.0, 1.0,  500.0>
}

sky_sphere
{
  pigment
  {
    gradient y
    color_map { [0.0 color blue 0.6] [1.0 color rgb 1] }
  }
}

light_source
{
  0*x // light's position (translated below)
  color red 1.0  green 1.0  blue 1.0  // light's color
  translate <-1, 3, -50>
}

// ----------------------------------------

// plane { y, -5 pigment {color rgb <0.7,0.5,0.3>} }

#include "metals.inc"

#declare Opng_obj = intersection {
    cylinder { <0,0,1> <0, .8, 1>, 1 }
    height_field
    {
     gif "logo_mono.gif"
    water_level 0
    translate <-.5, .10, 0>
    scale <2, 2, 2>
    }
    texture
    {
     T_Gold_1A
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
     T_Gold_1E
    }
    rotate <-90, 0, 0>
}



/*

object {egs_PIPES
                  rotate <0, 90, 0>
                  rotate <-100, 0, 0>
                  translate <-35, -15, 0>
                  scale <1, 1, 1>}


object {egs_PIPES
                  rotate <0, 90, 0>
                  rotate <-100, 0, 0>
                  translate <35, -15, 0>
                  scale <1, 1, 1>}

*/

#include "capsule.inc"

object {capsule_yb scale <10, 10, 10>}
