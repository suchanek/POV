//
// Persistence of Vision Ray Tracer Scene Description File
// File: pipeline.pov
// Vers: 3
// Desc: P&GP Pipeline drugs
// Date: 2/7/97
// Auth: Eric G. Suchanek, Ph.D.

#version 3.1;
global_settings { assumed_gamma 2.2}

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"
#include "skies.inc"

#include "metals.inc"
//
// scene objects to render
//
#declare DO_SKY = false;
#declare DO_RAINBOW = false;
#declare DO_GROUND = false;


#include "pipeline_sky.inc"
#include "rainbow.inc"
#include "pipeline_ground.inc"


//
// Aspect ratios for camera right vectors
//


#declare ASPECT =  .8;


//
// these declarations will sweep the camera along a circular
// path from +half_ang degrees to -half_ang degrees as the
// clock varies from 0 -> 1. The camera remains pointed at the
// origin.

#include "lenticular_camera.inc"

#declare rad = 31.0;              // 31 units in radius for the sweep
#declare half_ang = 15.0;         // total of 30 degree sweep
#declare ypos = 6;                // camera y-position
#declare initial_ang = 0.0;       // camera initial angle (polar coords)

// this declaration uses clock to set the position. To see the scene
// 'head-on' you must set the clock value to 0.5

camera {camera_lenticular}        



///////////// Molecular stuff /////////////////////////

#declare Bond_Plain= texture {   T_Brass_3C }
          
#declare Atom_C= object {
       sphere {<0.0, 0.0, 0.0> C_RAD }
       texture {
        finish {Shiny }
        pigment {
         color MediumForestGreen
         quick_color Gray25
       }
  }
}
   
#declare Atom_N= object {
       sphere {<0.0, 0.0, 0.0> N_RAD }
       texture {
        finish {Shiny }
        pigment {
         color SkyBlue
         quick_color Blue
       }
  }
}
   
//
// global light source
//
object {
  light_source {
     <-1, 5, -20.039>
     color White
  }
}



object {
  light_source {
     <0,0, -20.039>
     color Gray40 

  }
}

/* Object definitions follow */

#declare BOND_RADIUS = 0.12;
#declare ATM_SCL = .3;

//
// risedronate
//

#declare risedronate_bs_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-0.942, 0.277, 0.650> }
object {Atom_C scale ATM_SCL * .8 translate <-1.662, -0.876, 0.979> }
object {Atom_C scale ATM_SCL * .8 translate <-3.000, -0.983, 0.598> }
object {Atom_C scale ATM_SCL * .8 translate <-3.607, 0.078, -0.078> }
object {Atom_N scale ATM_SCL translate <-2.915, 1.217, -0.328> }
object {Atom_C scale ATM_SCL * .8 translate <-1.600, 1.320, -0.010> }
object {Atom_C scale ATM_SCL * .8 translate <0.551, 0.388, 0.973> }
object {Atom_H scale ATM_SCL translate <-1.184, -1.695, 1.509> }
object {Atom_H scale ATM_SCL translate <-3.561, -1.886, 0.821> }
object {Atom_H scale ATM_SCL translate <-4.640, -0.012, -0.403> }
object {Atom_H scale ATM_SCL translate <-1.051, 2.218, -0.275> }
object {Atom_C scale ATM_SCL * .8 translate <1.362, 0.294, -0.339> }
object {Atom_P scale ATM_SCL translate <3.132, 0.097, 0.152> }
object {Atom_P scale ATM_SCL translate <0.808, -1.206, -1.280> }
object {Atom_O scale ATM_SCL translate <4.091, 0.319, -0.966> }
object {Atom_O scale ATM_SCL translate <-0.667, -1.217, -1.497> }
object {Atom_O scale ATM_SCL translate <1.445, -1.318, -2.621> }
object {Atom_O scale ATM_SCL translate <3.510, 1.174, 1.266> }
object {Atom_O scale ATM_SCL translate <3.302, -1.267, 0.730> }
object {Atom_O scale ATM_SCL translate <1.193, -2.492, -0.415> }
object {Atom_O scale ATM_SCL translate <1.167, 1.501, -1.098> }
object {Atom_H scale ATM_SCL translate <0.764, 1.344, 1.473> }
object {Atom_H scale ATM_SCL translate <0.859, -0.427, 1.646> }
object {Atom_H scale ATM_SCL translate <3.681, 1.982, 0.800> }
object {Atom_H scale ATM_SCL translate <2.112, -2.384, -0.173> }
object {Atom_H scale ATM_SCL translate <0.242, 1.547, -1.322> }
object {Atom_H scale ATM_SCL translate <-3.390, 2.009, -0.790> }
cylinder { <-2.915, 1.217, -0.328>, <-3.390, 2.009, -0.790>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.167, 1.501, -1.098>, <0.242, 1.547, -1.322>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.193, -2.492, -0.415>, <2.112, -2.384, -0.173>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.510, 1.174, 1.266>, <3.681, 1.982, 0.800>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.551, 0.388, 0.973>, <0.859, -0.427, 1.646>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.551, 0.388, 0.973>, <0.764, 1.344, 1.473>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.362, 0.294, -0.339>, <1.167, 1.501, -1.098>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.808, -1.206, -1.280>, <1.193, -2.492, -0.415>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.132, 0.097, 0.152>, <3.302, -1.267, 0.730>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.132, 0.097, 0.152>, <3.510, 1.174, 1.266>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.808, -1.206, -1.280>, <1.445, -1.318, -2.621>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.808, -1.206, -1.280>, <-0.667, -1.217, -1.497>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.132, 0.097, 0.152>, <4.091, 0.319, -0.966>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.362, 0.294, -0.339>, <0.808, -1.206, -1.280>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.362, 0.294, -0.339>, <3.132, 0.097, 0.152>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.551, 0.388, 0.973>, <1.362, 0.294, -0.339>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-1.600, 1.320, -0.010>, <-1.051, 2.218, -0.275>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.607, 0.078, -0.078>, <-4.640, -0.012, -0.403>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.000, -0.983, 0.598>, <-3.561, -1.886, 0.821>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-1.662, -0.876, 0.979>, <-1.184, -1.695, 1.509>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-0.942, 0.277, 0.650>, <0.551, 0.388, 0.973>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-2.915, 1.217, -0.328>, <-1.600, 1.320, -0.010>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-0.942, 0.277, 0.650>, <-1.600, 1.320, -0.010>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.607, 0.078, -0.078>, <-2.915, 1.217, -0.328>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.000, -0.983, 0.598>, <-3.607, 0.078, -0.078>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-1.662, -0.876, 0.979>, <-3.000, -0.983, 0.598>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-0.942, 0.277, 0.650>, <-1.662, -0.876, 0.979>, BOND_RADIUS texture {Bond_Plain} } 
}

#declare risedronate_bs = object {
	object { risedronate_bs_obj } }
	                                      
// create a TrueType text shape
#declare risedronate_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Actonel Launch 2000",   // the string to create
  .5,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <2.25,2.25,1>
 rotate <0, 0, 0>
}

#declare png_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Procter & Gamble Pharmaceuticals",   // the string to create
  .5,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <1.25,1.25,.5>
 rotate <3, 0, 0>
}

#declare rised_orient = object {risedronate_bs rotate 90*z}

#declare rised_labeled = union {
  object {         rised_orient
                   rotate <0, -14.5, -5>
                   translate <0,0,1>
                   scale 3
                   }
  object { risedronate_text translate <-10, -15.75, -1> }
 // object { png_text translate <-9.0, 13, -0> }
}                                    

object {rised_labeled}






/*
#include "egs_sig.inc"
object { egstext
        scale <.35,.35,.35>
        rotate <10, 1, 0>
        translate <5.5, -10.75, -7.5>
         }
*/

//
// end of file
//
