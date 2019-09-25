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
#include "skies.inc"

//
// pipeline specific includes
//

#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"

#include "bj.inc"
#include "egs_sig.inc"
#include "pipeline_sky.inc"
#include "rainbow.inc"
#include "pipeline_ground.inc"

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
#declare ASPECT = EIGHTBYTEN
#include "cameras.inc"

/* Object definitions follow */

#declare BOND_RADIUS = 0.17
#declare ATM_SCL = 1

#declare ne11040_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <2.741, -1.261, -0.130> }
object {Atom_H scale ATM_SCL translate <3.545, -1.194, -0.650> }

}

#declare DRUG = object {
	object { DRUG_obj } }

// create a TrueType text shape
#declare DRUG_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "DRUG",   // the string to create
  .75,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

#declare DRUG_orient = object {DRUG rotate 90*z}

#declare DRUG_labeled = union {
  object {         DRUG
                   rotate <0, 0, 90>
                   translate <0,2,0>
                   scale 1.0
                   }
  object { DRUG_text translate <-6, -13, -2> }
}

object {
  light_source {
     <10.225, 8.082, -20.039>
     color White

  }
}


object {DRUG_labeled}
camera {camera_DRUG}

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <6, -13, -5>
         }


//
// end of file 
