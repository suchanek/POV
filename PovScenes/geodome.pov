
// Persistence of Vision Ray Tracer Scene Description File
// File: geodome.pov
// Vers: 3
// Desc: Basic Scene Example
// Date: 02/11/97
// Auth: Eric G. Suchanek
//

#version 3

// ==== Standard POV-Ray Includes ====
#include "colors.inc"	// Standard Color definitions
#include "textures.inc"	// Standard Texture definitions

// ==== Additional Includes ====

#include "METALS.INC"

#include "SKIES.INC"
#include "STONES.INC"
#include "STONES2.INC"
#include "WOODMAPS.INC"
#include "WOODS.INC"

global_settings
{
  assumed_gamma 1.0
}

// ----------------------------------------
camera
{
  location  <0.0, 0.5, -4.0>
  direction 1.5*z
  right     4/3*x
  look_at   <0.0, .5,  0.0>
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
plane { y, 0 pigment {color rgb <0.7,0.5,0.3>}}

// sphere { 0.0, 1 texture {pigment {radial frequency 8} finish{specular 1}} }

#include "geo.inc"
#include "geo2.inc"

#declare geodome_struts = object {
         geodome_hemisphere
         texture { T_Chrome_1B }
//         pigment { BrightGold}
         }
         
#declare geodome_glass_tris = object {
         geodome_glass_hemisphere
         }

#declare TheGeodome = union {
         object {geodome_struts } 
         object {geodome_glass_hemisphere }
    }
    
object {TheGeodome
        scale 1.5}
