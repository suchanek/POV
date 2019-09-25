//
// Persistence of Vision Ray Tracer Scene Description File
// File: pipeline.pov
// Vers: 3
// Desc: P&GP Pipeline drugs
// Date: 2/7/97
// Auth: Eric G. Suchanek, Ph.D.

#version 3.0
global_settings { assumed_gamma 1.8 }

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "skies.inc"

//
// pipeline specific includes
//

#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"


//
// scene objects to render
//

#declare DO_SKY = true
#declare DO_RAINBOW = true
#declare DO_GROUND = true

#include "bj.inc"
#include "egs_sig.inc"
#include "pipeline_sky.inc"
#include "rainbow.inc"
#include "pipeline_ground.inc"



//
// Aspect ratios for camera right vectors
//

#include "aspect.inc"
#declare ASPECT = .66667
#include "cameras.inc"

/* Object definitions follow */

#declare BOND_RADIUS = 0.20
#declare ATM_SCL = 1

#declare pg117117_obj = union {
object {Atom_N scale ATM_SCL * .8 translate <-3.158, 1.079, -0.230> }
object {Atom_H scale ATM_SCL translate <-3.355, 1.988, -0.709> }
object {Atom_C scale ATM_SCL * .8 translate <-4.180, 0.072, 0.013> }
object {Atom_H scale ATM_SCL translate <-4.726, -0.209, -0.903> }
object {Atom_H scale ATM_SCL translate <-4.895, 0.431, 0.761> }
object {Atom_C scale ATM_SCL * .8 translate <-3.328, -1.085, 0.607> }
object {Atom_H scale ATM_SCL translate <-3.664, -1.384, 1.614> }
object {Atom_H scale ATM_SCL translate <-3.298, -1.965, -0.054> }
object {Atom_N scale ATM_SCL translate <-2.015, -0.464, 0.643> }
object {Atom_H scale ATM_SCL translate <-1.184, -0.954, 1.013> }
object {Atom_C scale ATM_SCL translate <-1.967, 0.741, 0.160> }
object {Atom_N scale ATM_SCL translate <-0.902, 1.487, 0.072> }
object {Atom_H scale ATM_SCL translate <-0.979, 2.442, -0.297> }
object {Atom_C scale ATM_SCL * .8 translate <0.322, 1.045, 0.424> }
object {Atom_C scale ATM_SCL * .8 translate <1.108, 0.383, -0.533> }
object {Atom_C scale ATM_SCL * .8 translate <0.593, 0.036, -1.940> }
object {Atom_H scale ATM_SCL translate <1.289, 0.457, -2.679> }
object {Atom_C scale ATM_SCL * .8 translate <0.494, -1.501, -2.125> }
object {Atom_H scale ATM_SCL translate <-0.399, 0.474, -2.130> }
object {Atom_C scale ATM_SCL * .8 translate <0.781, 1.275, 1.730> }
object {Atom_H scale ATM_SCL translate <0.128, 1.765, 2.445> }
object {Atom_C scale ATM_SCL * .8 translate <2.069, 0.889, 2.121> }
object {Atom_H scale ATM_SCL translate <2.433, 1.046, 3.131> }
object {Atom_C scale ATM_SCL * .8 translate <2.405, 0.049, -0.143> }
object {Atom_C scale ATM_SCL * .8 translate <2.861, 0.285, 1.146> }
object {Atom_N scale ATM_SCL translate <4.119, -0.180, 1.244> }
object {Atom_H scale ATM_SCL translate <4.684, -0.223, 2.108> }
object {Atom_C scale ATM_SCL * .8 translate <4.482, -0.682, 0.042> }
object {Atom_H scale ATM_SCL translate <5.438, -1.128, -0.211> }
object {Atom_N scale ATM_SCL translate <3.431, -0.533, -0.798> }
object {Atom_H scale ATM_SCL translate <0.076, -1.746, -3.114> }
object {Atom_H scale ATM_SCL translate <1.494, -1.954, -2.054> }
object {Atom_H scale ATM_SCL translate <-0.154, -1.939, -1.351> }
cylinder { <0.494, -1.501, -2.125>, <0.245, -1.763, -1.738>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.245, -1.763, -1.738>, <-0.154, -1.939, -1.351>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.494, -1.501, -2.125>, <1.001, -1.772, -2.090>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.001, -1.772, -2.090>, <1.494, -1.954, -2.054>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.494, -1.501, -2.125>, <0.188, -1.647, -2.620>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.188, -1.647, -2.620>, <0.076, -1.746, -3.114>, BOND_RADIUS texture {Bond_H} }
cylinder { <5.438, -1.128, -0.211>, <4.464, -0.861, -0.505>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.464, -0.861, -0.505>, <3.431, -0.533, -0.798>, BOND_RADIUS texture {Bond_N} }
cylinder { <4.482, -0.682, 0.042>, <3.917, -0.600, -0.378>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.917, -0.600, -0.378>, <3.431, -0.533, -0.798>, BOND_RADIUS texture {Bond_N} }
cylinder { <4.119, -0.180, 1.244>, <3.431, -0.533, -0.798>, BOND_RADIUS texture {Bond_N} }
cylinder { <2.861, 0.285, 1.146>, <3.056, -0.162, 0.174>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.056, -0.162, 0.174>, <3.431, -0.533, -0.798>, BOND_RADIUS texture {Bond_N} }
cylinder { <2.405, 0.049, -0.143>, <2.887, -0.269, -0.471>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.887, -0.269, -0.471>, <3.431, -0.533, -0.798>, BOND_RADIUS texture {Bond_N} }
cylinder { <4.482, -0.682, 0.042>, <4.935, -0.948, -0.085>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.935, -0.948, -0.085>, <5.438, -1.128, -0.211>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.684, -0.223, 2.108>, <4.784, -0.408, 1.075>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.784, -0.408, 1.075>, <4.482, -0.682, 0.042>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.119, -0.180, 1.244>, <4.356, -0.408, 0.643>, BOND_RADIUS texture {Bond_N} }
cylinder { <4.356, -0.408, 0.643>, <4.482, -0.682, 0.042>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.861, 0.285, 1.146>, <4.482, -0.682, 0.042>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.119, -0.180, 1.244>, <4.445, -0.204, 1.676>, BOND_RADIUS texture {Bond_N} }
cylinder { <4.445, -0.204, 1.676>, <4.684, -0.223, 2.108>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.861, 0.285, 1.146>, <3.494, 0.031, 1.195>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.494, 0.031, 1.195>, <4.119, -0.180, 1.244>, BOND_RADIUS texture {Bond_N} }
cylinder { <2.405, 0.049, -0.143>, <2.861, 0.285, 1.146>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.433, 1.046, 3.131>, <2.840, 0.740, 2.138>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.840, 0.740, 2.138>, <2.861, 0.285, 1.146>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.069, 0.889, 2.121>, <2.861, 0.285, 1.146>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.108, 0.383, -0.533>, <2.405, 0.049, -0.143>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.069, 0.889, 2.121>, <2.349, 0.983, 2.626>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.349, 0.983, 2.626>, <2.433, 1.046, 3.131>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.128, 1.765, 2.445>, <1.130, 1.413, 2.283>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.130, 1.413, 2.283>, <2.069, 0.889, 2.121>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.781, 1.275, 1.730>, <2.069, 0.889, 2.121>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.781, 1.275, 1.730>, <0.524, 1.568, 2.087>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.524, 1.568, 2.087>, <0.128, 1.765, 2.445>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.322, 1.045, 0.424>, <0.781, 1.275, 1.730>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.494, -1.501, -2.125>, <0.047, -0.321, -2.128>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.047, -0.321, -2.128>, <-0.399, 0.474, -2.130>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.289, 0.457, -2.679>, <0.837, -0.331, -2.402>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.837, -0.331, -2.402>, <0.494, -1.501, -2.125>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.593, 0.036, -1.940>, <0.494, -1.501, -2.125>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.593, 0.036, -1.940>, <0.869, 0.288, -2.310>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.869, 0.288, -2.310>, <1.289, 0.457, -2.679>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.108, 0.383, -0.533>, <0.593, 0.036, -1.940>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.322, 1.045, 0.424>, <1.108, 0.383, -0.533>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.979, 2.442, -0.297>, <-0.399, 1.880, 0.063>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.399, 1.880, 0.063>, <0.322, 1.045, 0.424>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.902, 1.487, 0.072>, <-0.306, 1.287, 0.248>, BOND_RADIUS texture {Bond_N} }
cylinder { <-0.306, 1.287, 0.248>, <0.322, 1.045, 0.424>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.902, 1.487, 0.072>, <-0.959, 2.013, -0.113>, BOND_RADIUS texture {Bond_N} }
cylinder { <-0.959, 2.013, -0.113>, <-0.979, 2.442, -0.297>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.967, 0.741, 0.160>, <-1.439, 1.149, 0.116>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.439, 1.149, 0.116>, <-0.902, 1.487, 0.072>, BOND_RADIUS texture {Bond_N} }
cylinder { <-1.184, -0.954, 1.013>, <-1.492, -0.272, 0.586>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.492, -0.272, 0.586>, <-1.967, 0.741, 0.160>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.015, -0.464, 0.643>, <-1.969, 0.083, 0.401>, BOND_RADIUS texture {Bond_N} }
cylinder { <-1.969, 0.083, 0.401>, <-1.967, 0.741, 0.160>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.355, 1.988, -0.709>, <-2.746, 1.486, -0.275>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.746, 1.486, -0.275>, <-1.967, 0.741, 0.160>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.158, 1.079, -0.230>, <-2.581, 0.926, -0.035>, BOND_RADIUS texture {Bond_N} }
cylinder { <-2.581, 0.926, -0.035>, <-1.967, 0.741, 0.160>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.015, -0.464, 0.643>, <-1.581, -0.734, 0.828>, BOND_RADIUS texture {Bond_N} }
cylinder { <-1.581, -0.734, 0.828>, <-1.184, -0.954, 1.013>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.298, -1.965, -0.054>, <-2.692, -1.291, 0.294>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.692, -1.291, 0.294>, <-2.015, -0.464, 0.643>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.664, -1.384, 1.614>, <-2.790, -0.971, 1.128>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.790, -0.971, 1.128>, <-2.015, -0.464, 0.643>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.328, -1.085, 0.607>, <-2.670, -0.746, 0.625>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.670, -0.746, 0.625>, <-2.015, -0.464, 0.643>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.158, 1.079, -0.230>, <-2.015, -0.464, 0.643>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.328, -1.085, 0.607>, <-3.378, -1.611, 0.276>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.378, -1.611, 0.276>, <-3.298, -1.965, -0.054>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.328, -1.085, 0.607>, <-3.398, -1.264, 1.110>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.398, -1.264, 1.110>, <-3.664, -1.384, 1.614>, BOND_RADIUS texture {Bond_H} }
cylinder { <-4.895, 0.431, 0.761>, <-4.097, -0.179, 0.684>, BOND_RADIUS texture {Bond_H} }
cylinder { <-4.097, -0.179, 0.684>, <-3.328, -1.085, 0.607>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.180, 0.072, 0.013>, <-3.328, -1.085, 0.607>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.180, 0.072, 0.013>, <-4.465, 0.287, 0.387>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.465, 0.287, 0.387>, <-4.895, 0.431, 0.761>, BOND_RADIUS texture {Bond_H} }
cylinder { <-4.180, 0.072, 0.013>, <-4.542, -0.096, -0.445>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.542, -0.096, -0.445>, <-4.726, -0.209, -0.903>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.158, 1.079, -0.230>, <-3.680, 0.622, -0.109>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.680, 0.622, -0.109>, <-4.180, 0.072, 0.013>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.158, 1.079, -0.230>, <-3.281, 1.580, -0.470>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.281, 1.580, -0.470>, <-3.355, 1.988, -0.709>, BOND_RADIUS texture {Bond_H} }
}

#declare pg117117 = object {
	object { pg117117_obj } }


// create a TrueType text shape
#declare pg117117_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "PG-117117",   // the string to create
  .75,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <2,2,.66>
 rotate <10, 0, 0>
}


#declare pg117117_labeled = union {
  object {         pg117117
                   rotate <0, 0, -90>
                   rotate <0, 270, 0>
                   translate <0,-.5,8>
                   scale 2.0
                   }
  object { pg117117_text translate <-5, -11, -0> }
}


object {pg117117_labeled}
camera {camera_pg117117}

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <4.0, -11, -1.5>
         }



