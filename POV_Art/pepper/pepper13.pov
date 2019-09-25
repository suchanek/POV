// Persistence Of Vision raytracer version 3.0 sample file.
// File by Eric G. Suchanek, Ph.D.
//
// Change history
// ===============
// POV-Ray 3.0 changes:
//
//      98-12-16 - converted for POV 3.1   
//      98-12-29 - 'final' version for rendering full-res image.  
//      98-12-30 - added some conditional if statements for different renderings
// ================================================================================

#version 3.0

#declare PC = true

#if (PC)
  global_settings { assumed_gamma 2.2 max_trace_level 9}
#else
  global_settings { assumed_gamma 1.8 max_trace_level 12}
#end

#include "shapes.inc"
#include "shapes2.inc"
#include "colors.inc"
#include "textures.inc"
#include "logo.inc"
#include "metals.inc"
#include "woods.inc"                 
#include "marble2.inc"   
#include "glass.inc"      

#declare DO_MIRRORS = true
#declare DO_CHISEL = false
                     
#declare ASPECT = 3/4
                     
#declare the_lens = camera {
   direction <0,0,2>
   up <0,1,0>
   right <ASPECT,0,0>
}

#declare camera_main = camera {
   the_lens
   location <0.0, 30.0, -450.0>
   look_at <0.0, -30.0, 0.0>
}
#declare camera_close = camera {
   the_lens
   location <-100.0, 40.0, -2.0>
   look_at <0.0, 40.0, -2.0>
}

#declare camera_top = camera {
   the_lens
   location <0.0, 50.0, 0.0>
   look_at <0.0, .50, 0.0>
}

#declare camera_left = camera {
   the_lens
   location <-100.0, 45.0, 10.0>
   look_at <0.0, 45, 10.0>
}

#declare camera_floor = camera {
   the_lens
   location <0.0, 0.0, -50.0>
   look_at <0.0, 1, 0>
}

camera {camera_main}
//camera {camera_close}
//camera {camera_left}
//camera {camera_floor}


/* Light behind viewer postion (pseudo-ambient light) */

light_source { <100.0, 500.0, -300.0> colour rgb <.5,.5,.5> }
light_source { <-40.0, 30.0, -100.0> colour White }

// texture for the 'mirrors'

#declare mirror_tex = texture {   
        pigment { DimGray }
        finish {
          ambient 0
          diffuse 0.75
          reflection .6
        }
}        


#declare mirrors =
 union {
   plane { z, 70  rotate -45*y }
   plane { z, 70  rotate +45*y }
   texture {mirror_tex}
}


//
// The Base of the award
//
// colors for the plastic white on the base

#declare Wheat = color red 0.847059 green 0.847059 blue 0.74902
#declare Wheat_trans = color rgbt <.847059 .847059 .74902 .3>

// the luminous portion of the base

#declare plain_plane = object {
 plane {  z, -.01 texture { pigment {color Wheat_trans } finish {Luminous}} } }

#declare base_disk2 = object {
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
        cylinder { <0,-5,0>, <0,9.9,0>, 60 hollow texture {T_Chrome_4C} }
        object {base_disk2 scale 60 translate <0,10,0>}
}

     

#declare award_hex = intersection {
  object { 
   Hexagon
   rotate -90.0*z             /* Stand it on end (vertical)*/
   scale <40, 89, 40>
   texture { T_Glass2 }
#if (PC)
   interior{I_Glass} 
#end  
  } // object
  plane { y, 35  rotate -40*x 
   texture { T_Glass2 }	  
#if (PC)
  interior{I_Glass}
#end       
  	} // plane
}

#declare M = 1    //   Metallic amount
#declare myfinish =   finish { reflection .8 specular 1 ambient .3 metallic M}

#declare mytex1 = texture { pigment {BakersChoc} finish {myfinish} }
#declare mytex = texture { pigment {BrightGold} finish {myfinish} }
#declare omytex = texture {T_Gold_4C}

#declare peppertext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "elephnti.ttf",  // Microsoft Windows-format TrueType font file name
  "John E. Pepper",   // the string to create
  1,           // the extrusion depth
  0            // offset
  texture {mytex}
 }
 scale <5,5,3>
}                                           

#declare yeartext = object {
 text
 {  ttf    "elephnti.ttf",  "1963-1999",  1, 0 texture {mytex} }
 scale <5,5,3>
}                                           

#declare leadertext = object {
 text
 {   ttf "elephnti.ttf",  "Leadership",   1,  0 texture {mytex} }
 scale <6,6,3>
}

#declare throughtext = object {
 text
 {   ttf "timrom.ttf",  "through", 1, 0 texture {mytex} } 
 scale <6,6,3>
}                         

#declare authenttext = object {
 text
 { ttf "elephnti.ttf",  "Authenticity", 1, 0 texture {mytex} }
 scale <6,6,3>
}
        
#declare front_face = object {
  box {
	<-23, -100, -41.5>, <23, 11.5, -38.5>
   texture {
      marble1
      scale <9, 9, 4>
      finish {
         ambient 0.5
         diffuse 1
      }
   } // texture
   texture {
      marble4
      scale <7, 12, 9>
      rotate <0, 0, -40>
      finish {
         diffuse 1.0
         phong 0.6
         phong_size 50
      }
   } // texture
 } // box
}

     
#declare chisel_text = difference {
        object {front_face}     
        union {
         object {peppertext translate <-19, 0, -42> }  
	 object {yeartext translate <-16, -9, -42> }  // -69
         object {leadertext translate <-17, -25, -42> }           
	 object {throughtext translate <-10, -33, -42> } 
	 object {authenttext translate <-19, -41, -42> }   
	 }
}
        
#declare embossed_text = union {
        object {front_face}     
        object {peppertext translate <-19, 0, -42> }  
	object {yeartext translate <-16, -9, -42> }  // -69
        object {leadertext translate <-17, -25, -42> }           
	object {throughtext translate <-10, -33, -42> } 
	object {authenttext translate <-19, -41, -42> }   
}
        

#declare award = union {
 	  object {award_hex}
	  object {logo_disk rotate x*50 translate <0,45,5>} // 40, -7
   	  object {base translate <0, -90, 0>}
#if (DO_CHISEL)
	  object {chisel_text}	    
#else
          object {embossed_text}
#end
}
  

#declare myfloor = object {
    plane { y, -105 //-115
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
 }
}


object {award  rotate -0*y   translate -10*y } //-20

#if (DO_MIRRORS)
object {mirrors}
#end

object {myfloor}
object { egstext translate <29, -85, -148> }


/////////////////////////////////////////////////////


