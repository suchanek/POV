
// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3
// Desc: Checkered Floor Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3

#include "colors.inc"
#include "textures.inc"
#include "skies.inc"

global_settings
{
 assumed_gamma 1.8
}

// ----------------------------------------
camera
{
  location  <0.0, 0.5, -15.0>
  direction 1.5*z
  right     4/3*x
  look_at   <0.0, 0.0,  0.0>
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
  translate <-30, 30, -30>
}

// ----------------------------------------
plane
{
  y, -1
  texture
  {
    pigment {checker color rgb 1 color blue 1 scale 0.5}
    finish {Metal}
  }
}




#declare hat = union {
sphere { <0,1,0>, .8 texture {pigment {BrightGold}} finish{Metal} }
lathe {
    quadratic_spline
    6,
    <0,0>, <1,1>, <3,2>, <2,3>, <2,4>, <0,4>
    pigment { Blue }
    finish {
      ambient .3
      phong .75
    }
  }
}

object { hat rotate x*180
         translate y*3}
