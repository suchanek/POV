
#version 3.0
global_settings { assumed_gamma 2.2 }

#include "colors.inc"
#include "metals.inc"
#include "glass.inc"
#include "skies.inc"
// #include "rainbow.inc"

background { color MidnightBlue }

#declare camera_front = camera {
  location <0, 4, -20>
  right <4/3, 0, 0>
  up <0, 1, 0>
  sky <0, 1, 0>
  direction <0, 0, 1.21>
  look_at <0, -1, 0>
}

#declare camera_top = camera {
  location <0, 70, 0>
  right <4/3, 0, 0>
  up <0, 1, 0>
  sky <0, 1, 0>
  direction <0, 0, 1.21>
  look_at <0, -1, 0>
}

camera {camera_front}
light_source { <5, -2, -500> colour White }

/*
plane { y, -20.000000
	pigment { MidnightBlue}
	normal {
		waves 0.7
		frequency 10.0
		scale 50.355804
	}
	finish { reflection 0.6 ior 1.2 refraction .8 }
}

*/
#declare Sky = sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.75  color CornflowerBlue]
      [1.00  color MidnightBlue]
    }
    scale 2
    translate <-1, -1, -1>
  }
  pigment {
    bozo
    turbulence 0.6
    octaves 7
    omega .49876
    lambda 2.5432
    color_map {
      [0.0 color rgbf<.75, .75, .75, 0.1>]
      [0.4 color rgbf<.9, .9, .9, .9>]
      [0.7 color rgbf<1, 1, 1, 1>]
    }
    scale 6/10
    scale <1, 0.3, 0.3>
  }
  pigment {
    bozo
    turbulence 0.6
    octaves 8
    omega .5123
    lambda 2.56578
    color_map {
      [0.0 color rgbf<.375, .375, .375, 0.2>]
      [0.4 color rgbf<.45, .45, .45, .9>]
      [0.6 color rgbf<0.5, 0.5, 0.5, 1>]
    }
    scale 6/10
    scale <1, 0.3, 0.3>
  }
}

#declare spike = union {

// Capped Cylinder, closed [or open ended]
// cylinder { <END1>, <END2>, RADIUS [open] }
//  END1 = coord of one end of cylinder
//  END2 = coord of other end
// RADIUS = size of cylinder
// open = if present, cylinder is hollow, else capped
cylinder
{
  0*x,  5*y,  .15
  // open
texture {T_Gold_4A}
}


 // create a sphere shape
 sphere
 {
  <0, 5, 0> // center of sphere <X Y Z>
  0.25       // radius of sphere
  // scale <1,2,1> // <= Note: Spheres can become ellipses by uneven scaling
  texture{T_Chrome_4A}
 }
}


// Create 10 balls along X axis, from 0 to 9
#declare logo1 = union {

#declare Spikes = 18
#declare SpikeCount = 0
#declare zangle = 0
#declare increment = 360 / Spikes
#while (SpikeCount < Spikes)
  object {spike rotate <0,0,zangle> }
  #declare SpikeCount = SpikeCount+1 // increment our counter
  #declare zangle = zangle + increment
#end
}

#declare logo = union {

#declare levels = 10
#declare mysize = 1
#declare levelcount = 10

sphere
 {
  <0, 0, 0> // center of sphere <X Y Z>
  1       // radius of sphere
  texture{T_Chrome_4A}

}

#declare ztrans = -5

#while (levels > 0)

  object {logo1 translate ztrans * z
                scale <mysize, mysize, mysize>}
  #declare levels = levels - 1
//  #declare mysize = mysize * levels / levelcount
    #declare mysize = 1

  #declare ztrans = ztrans + 1
#end
 cylinder
 {
  -5*z,  5*z,  .2
   // open
  texture {T_Gold_4A}
 }

}



object {logo
       rotate <90,0,0>
//       rotate <0,60,0>
       }



#declare discoverytext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
"timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "NetGenics",   // the string to create
  .15,           // the extrusion depth
  0            // offset
  // pigment { BrightGold }
  // finish { reflection .25 specular 1 ambient .1 }
  texture {T_Chrome_4A}
 }
 scale 1.5
}



#declare title_text = union {
  object {discoverytext translate <0, 0, 0> scale <1.20, 1.0, 1.0> }
  // object {thankstext translate<0, -7, 0> }
  scale <1.0, 1.0, 1.0>
}


// object {title_text translate <-5, 1.2, -15> }
light_source { <-10, 1, -50> colour White shadowless}

/*
sphere {<0,0,0> 100000
  texture
  {
    pigment {MidnightBlue}
    finish {reflection 0.2}
  }
 }
*/


// my signature
//

#declare egstext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "E. G. Suchanek, '97",   // the string to create
  .1,           // the extrusion depth
  0            // offset
   pigment { LightBlue }
  finish { reflection .25 specular 1 ambient .3 }
 }
 scale .3
}


object {egstext translate <5.75, -5.5, -10> }
