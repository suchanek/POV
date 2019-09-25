//
// Persistence of Vision Ray Tracer Scene Description File
// File: pipeline.pov
// Vers: 3
// Desc: P&GP Pipeline drugs
// Date: 2/7/97
// Auth: Eric G. Suchanek, Ph.D.

#version 3.0
global_settings { assumed_gamma 2.2}

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"
#include "skies.inc"
#include "bj.inc"

//
// scene objects to render
//
#declare DO_SKY = false
#declare DO_RAINBOW = false
#declare DO_GROUND = false

//
// Aspect ratios for camera right vectors
//

#include "aspect.inc"

#declare ASPECT =  340/450 //.666667 // 24x36

// #include "cameras.inc"

#include "egs_sig.inc"
#include "pipeline_sky.inc"
#include "rainbow.inc"
#include "pipeline_ground.inc"

//
// global light source
//
object {
  light_source {
     <10.225, 8.082, -50.039>
     color Gray80

  }
}

/* Object definitions follow */

#declare BOND_RADIUS = 0.17
#declare ATM_SCL = 1

//
// risedronate
//
#declare risedronate3_obj = union {
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
}

#declare risedronate3 = object {
	object { risedronate3_obj } }

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
 rotate <3, 0, 0>
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

#declare rised_orient = object {risedronate3 rotate 90*z}

#declare rised_labeled = union {
  object {         rised_orient
                   rotate <0, -0, 0>
                   translate <0,1,-2>
                   scale 1.5
                   }
  object { risedronate_text translate <-10, -12, -2> }
  object { png_text translate <-9.0, 12, -2> }
}                                    
object {
  light_source {
     <0.225, 100.082, -20.039>
     color White
  }
}

object {rised_labeled}




//
// these declarations will sweep the camera along a circular
// path from +half_ang degrees to -half_ang degrees as the
// clock varies from 0 -> 1. The camera remains pointed at the
// origin.

#declare rad = 31.0;              // 30 units in radius for the sweep
#declare half_ang = 6.0;          // total of 12 degree sweep  (was 12)
#declare slope = -2.0 * half_ang; // change in -12 degrees over the range.

#declare theta = clock * slope + half_ang;     // equation for theta as a fxn of clock
#declare zpos = -rad * cos ((theta / 57.295));  // convert to radians, compute z
#declare xpos = rad * sin ((theta / 57.295));  // convert to radians, compute x


#declare camera_close = camera {
location < xpos, 6, zpos >
   right <ASPECT, 0, 0>
   look_at <0, 0, 0>
   // angle 50
}

camera {camera_close}

/*
object { egstext
        scale <.35,.35,.35>
        rotate <10, 1, 0>
        translate <5.5, -10.75, -7.5>
         }
*/

//
// end of file
//
