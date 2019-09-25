// Persistence Of Vision raytracer version 3.0 sample file.
// File by Eric G. Suchanek, Ph.D.
//
// Change history
// ===============
// POV-Ray 3.0 changes:
//
//      98-12-16 - converted for POV 3.1
// ===============

#version 3.0
global_settings { assumed_gamma 1.8 max_trace_level 10} // 13

#include "shapes.inc"
#include "shapes2.inc"
#include "colors.inc"
#include "textures.inc"
#include "logo.inc"
#include "aspect.inc"
#include "metals.inc"
#include "woods.inc"                 
#include "marble2.inc"
      

// #include "bna7_full.inc"
//#include "dna_cartoon.inc"



#declare camera_main = camera {
   location <0.0, 30.0, -450.0>
   direction <0.0, 0.0, 2.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, -30.0, 0.0>
}
#declare camera_close = camera {
   location <-100.0, 40.0, -2.0>
   direction <0.0, 0.0, 1.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, 40.0, -2.0>
}

#declare camera_top = camera {
   location <0.0, 50.0, 0.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, .50, 0.0>
}

#declare camera_left = camera {
   location <-100.0, 45.0, 10.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, 45, 10.0>
}

#declare camera_floor = camera {
   location <0.0, 0.0, -50.0>
   up  <0.0, 1.0, 0.0>
   right <3/4, 0.0, 0.0>
   look_at <0.0, 1, 0>
}

camera {camera_main}
//camera {camera_close}
//camera {camera_left}
//camera {camera_floor}

/* Light behind viewer postion (pseudo-ambient light) */
light_source { <100.0, 500.0, -300.0> colour rgb <.5,.5,.5> }
light_source { <-40.0, 30.0, -100.0> colour White }

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
}


#declare Wheat = color red 0.847059 green 0.847059 blue 0.74902
#declare Wheat_trans = color rgbt <.847059 .847059 .74902 .3>

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

//#declare pepper_bust = object { 
//        height_field {  
//          tga "pepper_bust.tga" smooth texture { T_Gold_4C }
//          translate <-.5,-.5, -0.5>
//          scale <12, 1, 30>
//        }
//}
     
     
#declare png_logo_disk_clip = difference { 
	cylinder {<0,-.1,0>, <0,2,0>, 14.98  open}
        height_field {  
          gif "logo_mono.gif" smooth texture { T_Glass2 }
          translate <-.5,-.5, -0.5>
          scale <30, 4, 30>
          interior {I_Glass}
        }
}
     
     
#declare A_GoldCb    =  P_Gold3 * 0.08 + 0.3
#declare F_MetalCb  =
finish {
    brilliance 4
    diffuse D_GoldC
    ambient A_GoldCb
    reflection R_GoldC
    metallic M
    specular 0.60
    roughness 1/80
}

#declare T_Gold_4Cb = texture { pigment { P_Gold4 } finish { F_MetalCb } }

#declare png_logo_disk = intersection {
	cylinder {<0,0,0>, <0,3,0>, 14.95 
	texture {T_Gold_4C}}
//	texture {T_Glass2}}
	object {png_logo_disk_clip}
}

#declare png_logo_disk_rot =
   object {png_logo_disk
 	  rotate x*-30
	  scale <2,2,1>  // 
   }



#declare award_hex = intersection {
  object { 
   Hexagon
   rotate -90.0*z             /* Stand it on end (vertical)*/
   scale <40, 89, 40>
   texture { T_Glass2  }
   interior{I_Glass} 
  }
  plane { y, 35  rotate -40*x 
	  texture { T_Glass2 }
          interior{I_Glass}
	}
}

#declare M = 1    //   Metallic amount
#declare myfinish =   finish { reflection .8 specular 1 ambient .3 metallic M}

#declare peppertext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "John E. Pepper",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment {BrightGold}
  finish {myfinish}
//    texture {T_Gold_4Cb}
 }
 scale <5,5,2>
 rotate <0, 0, 0>
}                                           

#declare yeartext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "1963-1999",   // the string to create
  1,           // the extrusion depth
  0            // offset
//    texture {T_Gold_4Cb}
  pigment {BrightGold}
  finish {myfinish}
 }
 scale <5,5,2>
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
  finish {myfinish}
//    texture {T_Gold_4Cb}
 }
 scale <6,6,2>
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
  finish {myfinish}
//    texture {T_Gold_4Cb}
 }
 //scale <15,15,3>     
 scale <6,6,2>
}                         

#declare authenttext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "Authenticity",   // the string to create
  1,           // the extrusion depth
  0            // offset
//    texture {T_Gold_4Cb}
  pigment {BrightGold}
  finish {myfinish}
 }
 scale <6,6,2>
}
        
#declare front_face = object {
  box {
	<-22.5, -100, -39>, <22.5, 11, -38>
   texture {
      marble1
      scale <9, 9, 4>
      finish {
         ambient 0.5
         diffuse 1
      }
   }
   texture {
      marble4
      scale <7, 12, 9>
      rotate <0, 0, -40>
      finish {
         diffuse 1.0
         phong 0.6
         phong_size 50
      }
   }
 }
}

    
#declare award_union = union {
 	  object {award_hex}
//	  object {png_logo_disk_rot translate <0,40,-2>} // -41
	  object {logo_disk rotate x*50 translate <0,45,5>} // 40, -7
   	  object {base translate <0, -90, 0>}
	  object {peppertext translate <-19, 0, -40> }  
	  object {yeartext translate <-16, -9, -40> }  // -69
          object {leadertext translate <-16.5, -25, -40> }           
	  object {throughtext translate <-10, -33, -40> } 
	  object {authenttext translate <-19, -41, -40> }   	    
	  object {front_face}
}
  
#declare award = union {
        object {award_union}
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
  "E. G. Suchanek, '99",   // the string to create
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
//object {pepper_bust rotate x*-90}
object {myfloor}
object { egstext translate <29, -85, -148> }


/////////////////////////////////////////////////////


