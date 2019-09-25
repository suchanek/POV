//--------------Pipe Works --------- Start Code 6/12/91 Miller

#include "colors.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "textures.inc"

//#include "w22.inc"

#include "pipes.inc"

// #include "png_logo.inc"

#include "bna7_full.inc"
#include "az2.inc"
#include "risedronate.inc"
#include "azacol.inc"
#include "etidronate.inc"

#include "capsule.inc"

#include "mysky.inc"

#declare DO_RAINBOW = 1

#include "rainbow.inc"



#version 1


#declare camera_orig = camera {
        location <40 60 -230>
        direction <0 0 2.2>
        up <0 1 0>
        right <1.3 0 0>
        look_at <0 -40 0> }

#declare ocamera_normal = camera {
        location <0, 100, -200>
        direction <0, 0, 2.2>
        up <0, 1, 0>
        right <1.54, 0, 0>  // 1.54 for 34x22; for 46x34 = 1.353
        look_at <0, -10, 0> }

#declare camera_normal = camera {
        location <0, 80, -300> // -250
        direction <0, 0, 2.2>
        up <0, 1, 0>
        right <1.33, 0, 0>  // 1.54 for 34x22; for 46x34 = 1.353
        look_at <0, -20, 0> }

#declare camera_far = camera {
        location <0, 100, -300>
        direction <0, 0, 2.2>
        up <0, 1, 0>
        right <1.3, 0, 0>
        look_at <0, -10, 0> }

camera {camera_normal}


// Put down a B&W checkered floor
/*
plane {
	y, -437.871009
	texture {
		pigment {
			checker color Black color White
			scale <250.000000, 500.000000, 250.000000>
		}
		finish {
			ambient 0.8
			diffuse 0.2
		}
	}
}
*/

#declare lake = object {
plane { y, -445.000000
	pigment { color red 0 green .07 blue 0}
	normal {
		waves 0.5
		frequency 8
		scale 55
	}
	finish { reflection 0.6 ior 1.2 refraction .8 }
 }
}


//----- Light 1
object {
        light_source {
        <-150, 950, -550>
        color White
        }
}

//----- Light 2
        object {
        light_source {
        <150, -100, -1000>
        color White
        }
}


//----- Light 3
        object {
        light_source {
        <-50, 100, 500>
        color Gold
        }
}

max_trace_level 3


#declare dollartext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "$",   // the string to create
  .1,           // the extrusion depth
  0            // offset
   pigment { Green }
  finish { reflection .25 specular 1 ambient .3 }
  //texture {LightBlue}
 }
 scale 7.0
}

#declare pipe_dollars = union {
 union { PIPES rotate <0 -65 0> translate <-100 -80 220> }
 object {capsule_yb  rotate <0, 10, -90> translate <-56, 8, 22>}
 object {capsule_yb  rotate <0, 0, 90> translate <-48, 9, 23>}
 object {capsule_bw  rotate <10, 0, -90> translate <-52, 14, 24>}

 object {dollartext translate <-58, 20, 22>}
 object {dollartext translate <-49, 23, 22>}
}




// uses image color index as height, extends along X-Z axes
// from <0 0 0> to <1 1 1>

// object {lake}

// object { W22 rotate <0 -8 0> }




#declare pipe_png = union {
 object {az2 rotate <30, 0, 90> translate <-13, 3, 0> }
 object {risedronate rotate <0, 0, 80> translate <-3, -3, 0> }

 object {az2 rotate <40, 20, 90> translate <-15, 0, 5> }
// object {az2 rotate <10, 10, 90> translate <-13, -1, -5> }
// object {risedronate rotate <10, 0, 60> translate <3, -10, 0> }
 object {risedronate rotate <0, 0, 80> translate <0, -5, 3> }

 union {PIPES rotate <0 -65 0> translate <-10, -10, 0> }
}

#declare pipe_dna = union {
 union { PIPES rotate <0 -65 0> translate <50,0, 0> }
 object {bna7_full rotate <90, 0, 0> translate <60, 10, 0> scale .8}
}


/* orig
union {pipe_dna translate <-100, -20, 0>}
union {pipe_png translate <10, -10, 0>}
*/


#declare png_pipe_drain = union {
 union {pipe_png translate <10, -10, 50>}
// object {MAIN_DRAIN_egs rotate <90,180,0> translate <40, -95, 20> scale <.75, .75, .75> }
 object {MAIN_DRAIN_egs rotate <-30,0,-90> translate <38, -90, 20> scale <.75, .75, .75> }

}


//object {MAIN_DRAIN_egs rotate <0,0,0> translate <40, -95, 20> scale <.75, .75, .75> }
//object {DRAIN_PIPE rotate <0,0,0> translate <0, 0, 0> scale <.5, .5, .5>}
//union {egs_PIPES rotate <0,0,-90> rotate <0, -90, 0> translate <20, 0, 0> }



#declare thankstext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Building the Rx Pipeline",   // the string to create
  .2,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
   finish { reflection .25 specular 1 ambient .3 }
 // texture {T_Gold_1C}
 }
 scale 5
}

#declare thanks2text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "the Rx Pipeline!",   // the string to create
  .1,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
   finish { reflection .25 specular 1 ambient .1 }
  // texture {T_Gold_1C}
 }
 scale 5
}

#declare giltext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Gil Cloyd",   // the string to create
  .15,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .1 }
  //texture {T_Gold_1E}
 }
 scale 8
}

#declare title_text = union {
  object {giltext translate <8, 0, 0> scale <1.0, 1.0, 1.0> }
  object {thankstext translate<0, -7, 0> }
  scale <1.5, 1.5, 1.5>
  translate <-35, 10, 100>
}


object {title_text
//        translate <-16, 35, -10>
}


union {pipe_dna translate <-140, -20, 120>}
object {png_pipe_drain translate <0, -20, 50> }






