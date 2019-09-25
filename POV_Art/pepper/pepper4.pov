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
// #include "bna7_full.inc"
//#include "dna_cartoon.inc"



#declare camera_main = camera {
   location <0.0, 30.0, -450.0>
   direction <0.0, 0.0, 2.0>
   up  <0.0, 1.0, 0.0>
   right <2/3, 0.0, 0.0>
   look_at <0.0, -30.0, 0.0>
}
#declare camera_close = camera {
   location <0.0, -30.0, -200.0>
   direction <0.0, 0.0, 2.0>
   up  <0.0, 1.0, 0.0>
   right <2/3, 0.0, 0.0>
   look_at <0.0, -30.0, 0.0>
}

#declare camera_top = camera {
   location <0.0, 200.0, 0.0>
   up  <0.0, 1.0, 0.0>
   right <2/3, 0.0, 0.0>
   look_at <0.0, .50, 0.0>
}

#declare camera_left = camera {
   location <-100.0, 35.0, -10.0>
   up  <0.0, 1.0, 0.0>
   right <2/3, 0.0, 0.0>
   look_at <0.0, 35, -10.0>
}

camera {camera_main}
//camera {camera_close}
//camera {camera_left}

/* Light behind viewer postion (pseudo-ambient light) */
light_source { <100.0, 500.0, -500.0> colour rgb <.5,.5,.5> }
// light_source { <-20.0, 10.0, -100.0> colour White }

/* Stand for the vase */
#include "glass.inc"


#declare mirror_tex = texture {   
        pigment { MidnightBlue }
        finish {
          ambient 0
          diffuse 0.75
          reflection .4
        }
}        


#declare mirrors =
 union {
   plane { z, 70  rotate -45*y }
   plane { z, 70  rotate +45*y }
   texture {mirror_tex}
  // pigment { DimGray }

}




#declare Wheat = color red 0.847059 green 0.847059 blue 0.74902
#declare Wheat_trans = color rgbt <.847059 .847059 .74902 .4>

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
	cylinder {<0,0,0>, <0,3,0>, 14.95 texture {T_Gold_4C}}
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
	  texture { T_Glass2 }
          interior{I_Glass}
	}
}

#declare peppertext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "John E. Pepper",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
//    texture {T_Chrome_5E}
 }
 scale <5,5,3>
 rotate <0, 0, 0>
}                                           

#declare leadertext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
//  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "Leadership",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
 //   texture {T_Chrome_5E}
 }
 //scale <15,15,3>     
 scale <9,9,3>
// rotate <50, 0, 0>
}

#declare throughtext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "through",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
 //   texture {T_Chrome_5E}
 }
 //scale <15,15,3>     
 scale <10,10,3>
// rotate <50, 0, 0>
}                         

#declare authenttext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "Authenticity",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish { reflection .75 specular 1 ambient .3 }
 }
 //scale <15,15,3>     
 scale <10,10,3>
}
            
#declare cliptext = union {
            object {leadertext translate <-28, 13, 0> }           
	    object {throughtext translate <-18, -3, 0> } 
	    object {authenttext translate <-35, -17, 0> }   	    
	}
#declare award_union = union {
 	  object {award_hex}
	  object {png_logo_disk_rot translate <0, -32, -41>}
   	  object {base translate <0, -90, 0>}
	  object {peppertext translate <-19, -2, -39> }  
          
}
  

#declare award = difference {
        object {award_union}
        object {cliptext rotate 50*x translate <2,52,5> }
}



#declare S_Wood1 = texture {
    pigment {
        wood
        color_map {
            [ 0.00 rgb < 0.890, 0.600, 0.300 > ]
            [ 0.10 rgb < 0.890, 0.600, 0.300 > ]
            [ 0.90 rgb < 0.600, 0.400, 0.200 > ]
            [ 1.00 rgb < 0.600, 0.400, 0.200 > ]
        }
        rotate < 2.000, 90.000, 1.000 >
        scale < 0.200, 0.200, 1.100 >
        turbulence < 0.090, 0.090, 0.090 >
        octaves 3
    }
    finish {
        ambient < 0.300, 0.300, 0.300 >
        diffuse .50
        reflection < 0.000, 0.000, 0.000 >
        specular .10
        roughness 0.002
        phong .40
        phong_size 16
    }
}

#declare myfloor = object {
    plane { y, -115
//    texture {Rosewood    scale 10 }
  pigment {DMFLightOak scale 15}
  finish {Shiny}
  }
}

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


object {award  rotate -0*y   translate -20*y }

object {mirrors}
object {myfloor}
object { egstext translate <29, -85, -148> }


/////////////////////////////////////////////////////


