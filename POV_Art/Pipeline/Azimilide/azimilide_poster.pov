//
// Persistence of Vision Ray Tracer Scene Description File
// File: pipeline.pov
// Vers: 3
// Desc: P&GP Pipeline drugs
// Date: 2/7/97
// Auth: Eric G. Suchanek, Ph.D.

#version 3.0
global_settings { assumed_gamma 1.0 }

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
#declare DO_SKY = true
#declare DO_RAINBOW = true
#declare DO_GROUND = true

//
// scene objects to render
//
#declare DO_SKY = true
#declare DO_RAINBOW = true
#declare DO_GROUND = true

//
// Aspect ratios for camera right vectors
//

#include "aspect.inc"

#declare ASPECT = .8

#include "cameras.inc"

#include "egs_sig.inc"
#include "pipeline_sky.inc"
#include "rainbow.inc"
#include "pipeline_ground.inc"
object {
  light_source {
     <10.225, 8.082, -20.039>
     color White

  }
}


/* Object definitions follow */

#declare BOND_RADIUS = 0.17
#declare ATM_SCL = 1

//
// azimilide
//

#declare azimilide2_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-7.881, 4.153, -5.428> }
object {Atom_C scale ATM_SCL * .8 translate <-6.737, 4.289, -4.688> }
object {Atom_H scale ATM_SCL translate <-6.425, 5.166, -4.452> }
object {Atom_C scale ATM_SCL * .8 translate <-6.052, 3.152, -4.293> }
object {Atom_H scale ATM_SCL translate <-5.258, 3.233, -3.759> }
object {Atom_C scale ATM_SCL * .8 translate <-6.487, 1.888, -4.648> }
object {Atom_C scale ATM_SCL * .8 translate <-7.647, 1.789, -5.405> }
object {Atom_H scale ATM_SCL translate <-7.962, 0.918, -5.655> }
object {Atom_C scale ATM_SCL * .8 translate <-8.341, 2.915, -5.782> }
object {Atom_H scale ATM_SCL translate <-9.141, 2.840, -6.307> }
object {Atom_C scale ATM_SCL * .8 translate <-5.737, 0.701, -4.286> }
object {Atom_C scale ATM_SCL * .8 translate <-4.100, -0.358, -3.240> }
object {Atom_C scale ATM_SCL * .8 translate <-4.717, -1.268, -4.028> }
object {Atom_H scale ATM_SCL translate <-4.482, -2.193, -4.125> }
object {Atom_C scale ATM_SCL * .8 translate <-5.768, -0.587, -4.671> }
object {Atom_H scale ATM_SCL translate <-6.403, -0.964, -5.285> }
object {Atom_C scale ATM_SCL * .8 translate <-3.021, -0.504, -2.309> }
object {Atom_H scale ATM_SCL translate <-2.542, -1.335, -2.267> }
object {Atom_C scale ATM_SCL * .8 translate <-1.410, 1.123, 0.340> }
object {Atom_C scale ATM_SCL * .8 translate <-0.360, -0.824, 0.942> }
object {Atom_C scale ATM_SCL * .8 translate <-1.081, -1.092, -0.348> }
object {Atom_H scale ATM_SCL translate <-0.470, -1.355, -1.041> }
object {Atom_H scale ATM_SCL translate <-1.750, -1.771, -0.236> }
object {Atom_C scale ATM_SCL * .8 translate <-0.246, 1.088, 2.559> }
object {Atom_H scale ATM_SCL translate <-0.979, 1.626, 2.868> }
object {Atom_H scale ATM_SCL translate <-0.099, 0.393, 3.205> }
object {Atom_C scale ATM_SCL * .8 translate <2.265, 1.190, 2.081> }
object {Atom_H scale ATM_SCL translate <2.109, 0.733, 1.252> }
object {Atom_H scale ATM_SCL translate <2.984, 1.812, 1.950> }
object {Atom_C scale ATM_SCL translate <1.000, 1.938, 2.478> }
object {Atom_H scale ATM_SCL translate <0.839, 2.641, 1.844> }
object {Atom_H scale ATM_SCL translate <1.154, 2.348, 3.332> }
object {Atom_C scale ATM_SCL * .8 translate <2.687, 0.190, 3.151> }
object {Atom_H scale ATM_SCL translate <2.738, 0.627, 4.004> }
object {Atom_H scale ATM_SCL translate <2.022, -0.500, 3.204> }
object {Atom_C scale ATM_SCL * .8 translate <3.921, -1.369, 1.648> }
object {Atom_H scale ATM_SCL translate <3.583, -0.905, 0.879> }
object {Atom_H scale ATM_SCL translate <3.309, -2.078, 1.864> }
object {Atom_C scale ATM_SCL * .8 translate <5.270, -1.969, 1.353> }
object {Atom_H scale ATM_SCL translate <5.214, -2.558, 0.597> }
object {Atom_H scale ATM_SCL translate <5.885, -1.262, 1.141> }
object {Atom_C scale ATM_SCL * .8 translate <5.891, -1.768, 3.693> }
object {Atom_H scale ATM_SCL translate <6.502, -1.065, 3.459> }
object {Atom_H scale ATM_SCL translate <6.239, -2.224, 4.463> }
object {Atom_C scale ATM_SCL * .8 translate <4.552, -1.167, 4.008> }
object {Atom_H scale ATM_SCL translate <3.943, -1.870, 4.246> }
object {Atom_H scale ATM_SCL translate <4.625, -0.566, 4.753> }
object {Atom_C scale ATM_SCL * .8 translate <7.051, -3.429, 2.300> }
object {Atom_H scale ATM_SCL translate <7.314, -3.894, 3.097> }
object {Atom_H scale ATM_SCL translate <7.725, -2.786, 2.068> }
object {Atom_H scale ATM_SCL translate <6.947, -4.057, 1.582> }
object {Atom_N scale ATM_SCL translate <5.780, -2.711, 2.548> }
object {Atom_H scale ATM_SCL translate <5.027, -3.398, 2.798> }
object {Atom_N scale ATM_SCL translate <4.003, -0.437, 2.814> }
object {Atom_H scale ATM_SCL translate <4.620, 0.330, 2.549> }
object {Atom_N scale ATM_SCL translate <-2.687, 0.456, -1.532> }
object {Atom_N scale ATM_SCL translate <-1.687, 0.198, -0.628> }
object {Atom_N scale ATM_SCL translate <-0.610, 0.479, 1.283> }
object {Atom_O scale ATM_SCL translate <0.307, -1.606, 1.573> }
object {Atom_O scale ATM_SCL translate <-4.701, 0.873, -3.389> }
object {Atom_O scale ATM_SCL translate <-1.778, 2.272, 0.407> }
object {Atom_Cl scale ATM_SCL * .8 translate <3.704, -4.726, 3.338> }
object {Atom_Cl scale ATM_SCL * .8 translate <6.092, 1.625, 2.043> }
object {Atom_Cl scale ATM_SCL * .8 translate <-8.732, 5.582, -5.934> }
}

#declare azimilide2 = object {
	object { azimilide2_obj }
    rotate z* -90 }


#declare azimilide_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Azimilide",   // the string to create
  1,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

#declare azim_labeled = union {
  object { azimilide2 translate -1*x }
  object { azimilide_text translate <-6, -13, -2> }
}


object {
  light_source {
     <0.225, 20.082, -20.039>
     color White
     fade_distance 10
     fade_power 2

  }
}

object {azim_labeled}
camera {camera_close}
object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <3.5, -9, -10>
         }


//
// end of file pipeline.pov
//

