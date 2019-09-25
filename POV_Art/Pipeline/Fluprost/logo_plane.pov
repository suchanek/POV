
// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3
// Desc: Image Map Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

global_settings
{
  assumed_gamma 2.2
}

// ----------------------------------------
camera
{
  location  <0.0, 4.0, -4.0>
  direction 2*z
  right     4/3*x
  look_at   <0.0, 0.0,  -.5>
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
  translate <0, 20, -30>
}

// ----------------------------------------
plane
{
  y, -1
  texture
  {
    pigment {checker color rgb 1 color blue 1 scale 0.5}
    finish {reflection 0.2}
  }
}

#declare logo_plane = object {
 plane
 {
  z, -.01
  texture
  {
    pigment
    {
      image_map
      {
        tga "hclogo.tga"
        interpolate 2 // smooth it
        once   // don't tile image, just one copy
 //       filter 0 0.8  // make 1st color mostly transparent
 //       filter 1 0.8  // make 2nd color mostly transparent
      }
      // transform it to unit-size (-1 to +1)
      translate -0.5*(x+y) // center on the origin
      scale 2              // make it unit-sized
    }
    finish {Shiny}
  }
 }
}


#declare logo_disk = object {
     intersection {
         
         object {logo_plane}
         cylinder { 0*z,-.02*z,1 open}
     }
    rotate x * 90
 }
 
 object {logo_disk}
