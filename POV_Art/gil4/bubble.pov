
// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3
// Desc: Basic Scene Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3

#include "colors.inc"
#include "glass.inc"

global_settings
{
  assumed_gamma 1.0
}

// ----------------------------------------
camera
{
  location  <0.0, 20, -50.0>
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
plane { y, -1 pigment {color rgb <0.7,0.5,0.3>}}


#declare bubble = sphere {<0,0,0> 1 hollow
                           texture {T_Glass1}
                         }
#declare dollartext = object {
 union {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "$",   // the string to create
  .1,           // the extrusion depth
  0            // offset
   pigment { Green }
  finish { reflection .20 specular 1 ambient .3 }
  //texture {LightBlue}
 } // text
 object {bubble translate <.2, .3, 0>}
 } // union

 scale 5
}

object {dollartext translate <0,5,0>}
