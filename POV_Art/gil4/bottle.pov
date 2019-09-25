
// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3
// Desc: Basic Scene Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3

#include "colors.inc"

global_settings
{
  assumed_gamma 1.0
}

// ----------------------------------------
camera
{
  location  <0.0, 2, -5.0>
  direction 1.5*z
  right     4/3*x
  look_at   <0.0, 1.0,  0.0>
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

//sphere { 0.0, 1 texture {pigment {radial frequency 8} finish{specular 1}} }

#declare label_texture = texture {
 pigment {
// texture pigment {} attribute
// create a texture that lays an image's colors onto a surface
// image maps into X-Y plane from <0,0,0> to <1,1,0>
image_map
{
  gif "label1.gif" // the file to read (iff/gif/tga/png/sys)
  map_type 2 // 0=planar, 1=spherical, 2=cylindrical, 5=torus
  interpolate 2 // 0=none, 1=linear, 2=bilinear, 4=normalized distance
  // [filter N V] // N=all or color index # (0...N), V= value (0.0...1.0)
  // [transmit N V] // N=all or color index # (0...N), V= value (0.0...1.0)
  // [use_color | use_index]
  once
 } // image_map
 } // pigment
 scale <1, 1, 1>
}

#declare label = object {
 cylinder {<0,0,0>, <0,2,0> .5 open}
 texture {label_texture rotate <0,0,0> scale <1, 1, 1> }
 rotate <0,0,0>
 }

 object {label rotate<0, 0,0>}


