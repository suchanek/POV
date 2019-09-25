//
// PDB2POV (UNIX) atom input prepared by pdb2pov 08/29/96 13:11:27
// Author: Eric G. Suchanek, Ph.D.
// Mac port: Richard G. Rothwell, Ph.D.
//	Atoms:   64
//	Extent:	Xmin: -11.641 Xmax: 10.225,
//		Ymin: -7.226, Ymax: 8.082
//		Zmin: -8.807 Zmax: 7.253
//	Enclosing Sphere: 14.731

#version 3.0
global_settings { assumed_gamma 1.2 }

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "skies.inc"
#include "bj.inc"

#declare DO_RAINBOW = true
#include "rainbow.inc"

#include "aspect.inc"

#declare ASPECT=EIGHTBYTEN

#include "cameras.inc"
camera {camera_close}


/*
object {
  light_source {
     <0.225, 100.082, -20.039>
     color White
  }
}
*/
object {
  light_source {
     <0.225, 20.082, -70.039>
     color White
  }
}

background { color SkyBlue }

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



/* Create the beloved famous raytrace checkered floor */

plane { y, -15
    pigment { Sapphire_Agate  scale 10.0}
    finish { reflection .35 specular 1 }
    normal { ripples .5 turbulence .5 scale 15 }
/*
     finish {
       ambient 0.2
       diffuse 0.8
     }
*/
 }

#declare BOND_RADIUS = 0.17
#declare ATM_SCL = 1

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



// create a TrueType text shape
#declare mytext = object {
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

#declare egstext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "E. G. Suchanek, '97",   // the string to create
  .25,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }
 }
}

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <4, -10, -8.5>
         }

#declare azim_labeled = union {
  object { azimilide2 translate <-1,0,-1> }
  object { mytext translate <-6, -13, -2> }
}

object {azim_labeled}

sky_sphere{Sky}
