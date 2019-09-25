//
// PDB2POV (UNIX) atom input prepared by pdb2pov 08/26/96 09:43:41
// Author: Eric G. Suchanek, Ph.D.
// Mac port: Richard G. Rothwell, Ph.D.
//	Atoms:   78
//	Extent:	Xmin: -11.046 Xmax: 12.341,
//		Ymin: -6.215, Ymax: 7.409
//		Zmin: -5.364 Zmax: 5.963
//	Enclosing Sphere: 12.723

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"

#version 3.0
global_settings { assumed_gamma 1.8 }

#declare ASPECT = 2/3

#declare camera_main = camera {
   location < 0, 14, -50 >
   direction < 0, 0, 1>
   up <0, 1, 0>
   right <ASPECT, 0, 0>
   look_at <0, 4.5, 0>
}

#declare camera_left = camera {
   location < -50, 14, 0 >
   right <ASPECT, 0, 0>
   look_at <0, 4.5, 0>
}

#declare camera_top = camera {
   location < 0, 50, 0 >
   right <ASPECT, 0, 0>
   look_at <0, 4.5, 0>
}

camera {camera_main}


object {
  light_source {
     <12.341, 7.409, -32.129>
     color White
  }
}

object {
  light_source {
     <12.341, 200.409, -500.129>
     color Gray70
     shadowless
  }
}

/* A nice gradient shaded blue sky with white coulds */
sphere { <0, 0, 0>, 3000
   pigment {
      gradient <0, 1, 0>
      colour_map {
         [0, 0.8  colour red .3   green 0.3 blue 1
                  colour red 0.7 green 0.7 blue 1]
         [0.8, 1  colour red 0.7 green 0.7 blue 1
                  colour red 0.90 green 0.9 blue 1]
      }
      scale <3000,  3000,  3000>
      quick_colour red 0.7  green 0.7 blue 1.0
   }
   finish {
      ambient 0.7
      diffuse 0   /* we don't want clouds casting shadows on the sky */
   }
}

sphere { <0, 0, 0>, 2590
   pigment {
      bozo
      turbulence 0.5
      colour_map {
         [0,   0.6   colour Clear
                     colour Clear]
         [0.6, 0.8   colour Clear
                     colour White]
         [0.8, 1.001 colour White
                     colour red 0.8 green 0.8 blue 0.8]
      }
      quick_colour red 0.7 green 0.7 blue 1
      scale <1000, 200, 1000>
   }
   finish {ambient 0.7 diffuse 0}
}
/* Create the beloved famous raytrace checkered floor */
plane { y, -9.621000
      pigment {
      checker colour Black colour White
      scale 6.168500
     }
     finish {
       ambient 0.2
       diffuse 0.8
     }
}

#include "dihydrochlam.inc"

#include "bell_jar.inc"

#include "chlam3.inc"

#declare bj = object {
	bell_jar_cage scale <11, 4.85, 11 >
	translate <0, -3.75, 0>
	}


#declare object_dihydrochlam_bell = union {
	object  {dihydrochlam}
	object {bj}
}

#declare object_chlam3_bell = union {
    object  {chlam3 	rotate <180, 0, 90>
	           translate <0, 7.0, -0>}
	object {bj}
}

#declare object_dihydrochlam_bell_cpk = union {
	object  {dihydrochlam_cpk}
	object {bj}
}

 object {object_chlam3_bell}
// object {object_dihydrochlam_bell_cpk}


// create a TrueType text shape
#declare title_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Chlamydocin",   // the string to create
  .5,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
//  finish { Metal }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

object {title_text
        scale 1.20
        translate <-10,-8,-18>
        }

 #declare egs_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "E. G. Suchanek, '97",   // the string to create
  .5,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { Metal }

 }
 scale <.4,.4,.4>
 rotate <10, 0, 0>
}

object {egs_text
        translate <7.5, -8, -20>
        }

/*
disc {
  <0, 0.001, 0>, <0, 1, 0>, 1000
  pigment { checker colour White colour Black }
  finish { ambient 0.4 diffuse 0.6 }
  translate <0,-9,0>
}
*/
