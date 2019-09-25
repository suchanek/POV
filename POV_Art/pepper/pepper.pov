// Persistence Of Vision raytracer version 3.0 sample file.
// File by Eric G. Suchanek, Ph.D.
//
// NOTE: This image has traditionally been used as the standard
// benchmark file.  At the time of POV-Ray 1.0, this scene rendered
// in about the same time as the average of all of the standard scene
// files.  Be cautious of making changes that will unfairly affect
// benchmarks.  Please log all changes to this file below.
// ===============
// Change history
// ===============
// POV-Ray 3.0 changes:
//
//      98-12-16 - converted for POV 3.1
// ===============

#version 3.0
global_settings { assumed_gamma 2.2 max_trace_level 13 }

#include "shapes.inc"
#include "shapes2.inc"
#include "colors.inc"
#include "textures.inc"
#include "logo.inc"
#include "aspect.inc"
#include "metals.inc"
#include "woods.inc"                 
#include "stones1.inc"


#declare camera_main = camera {
   location <0.0, 30.0, -450.0>
   direction <0.0, 0.0, 2.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, -30.0, 0.0>
}
#declare camera_close = camera {
   location <0.0, -30.0, -200.0>
   direction <0.0, 0.0, 2.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, -30.0, 0.0>
}

#declare camera_top = camera {
   location <0.0, 200.0, 0.0>
   direction <0.0, 0.0, 2.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, -25.0, 0.0>
}

camera {camera_main}
//camera {camera_close}
//camera {camera_top}

/* Light behind viewer postion (pseudo-ambient light) */
light_source { <100.0, 500.0, -500.0> colour White }
// light_source { <-20.0, 10.0, -100.0> colour White }

/* Stand for the vase */
#include "glass.inc"




#declare mirrors =
 union {
   plane { z, 70  rotate -45*y }
   plane { z, 70  rotate +45*y }

   pigment { DimGray }
//   finish {
//      ambient 0.2
//      diffuse 0.75
//      reflection .8
//   }
}


object {mirrors}
#declare Wheat = color red 0.847059 green 0.847059 blue 0.74902
#declare Wheat_trans = color rgbt <.847059 .847059 .74902 .2>

#declare plain_plane = object {
 plane
 {
  z, -.01
  texture { pigment {color Wheat_trans } finish {Luminous}}
 }
}



#declare logo_disk2 = object {
  union{
     intersection {
         object {plain_plane}
         cylinder { 0*z,-.02*z,1 open}
     }

    object {ring}
  }
  rotate x * 90  // now oriented with Y up.
}

#declare base = union {
        cylinder { <0,-5,0>, <0,10,0>, 60 hollow texture {T_Chrome_4C} }
        object {logo_disk2 scale 60 translate <0,10.0,0>}
//	light_source { <0.0, 8.0, 0.0> colour White }

}

#declare png_logo_disk_clip = difference { 
        
	cylinder {<0,-.1,0>, <0,2,0>, 14.98  open}
        height_field {  
          gif "logo_mono.gif" smooth texture { T_Glass2 }
          translate <-.5,-.5, -0.5>
          scale <30, 4, 30>
          interior {I_Glass}
        }

}
     
     

#declare png_logo_disk = intersection {
	cylinder {<0,0,0>, <0,3,0>, 14.95 texture {T_Gold_5E}}
	object {png_logo_disk_clip}
}

#declare png_logo_disk_rot =
   object {png_logo_disk
 	  rotate x*-90
	  scale <1.25,1.25,2>  // 
   }



#declare award_hex = intersection {
  object { 
   Hexagon
   rotate -90.0*z             /* Stand it on end (vertical)*/
   scale <40, 89, 40>
   texture { T_Glass2  }
   interior{I_Glass} 
  }
//   pigment { DimGray }
//   finish {Shiny}
//  }
  plane { y, 35  rotate -40*x 
        interior{I_Glass}
	  texture { T_Glass2 }
	}
}

#declare peppertext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "John E. Pepper",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
//    texture {T_Chrome_5E}
 }
 scale <6,6,2>
 rotate <0, 0, 0>
}                                           

#declare leadertext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Leadership",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
 //   texture {T_Chrome_5E}
 }
 scale <5,5,1>
 rotate <0, 0, 0>
}


#declare award = union {
  	  object {award_hex}
	  object {png_logo_disk_rot translate <0, -32, -39>}
   	  object {base translate <0, -90, 0>}
	  object {peppertext translate <-18, -2, -40> }
}

object {award
//	   rotate 90*y
	   translate -20*y
}

#declare myfloor = object {
    plane { y, -116
  //  texture {T_Grnt19a    scale 30 }
  pigment {DMFLightOak scale 15}
  finish {Shiny}
  }
}

object {myfloor}


// text stuff


#declare egstext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "E. G. Suchanek, '98",   // the string to create
  .4,           // the extrusion depth
  0            // offset 
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
  scale <2.5,2.5,2>
  rotate <0, 0, 0>
 }
}

object { egstext translate <23, -85, -149> } // -25, -90, -130


