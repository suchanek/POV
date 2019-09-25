//--------------Pipe Works --------- Start Code 6/12/91 Miller

#include "colors.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "textures.inc"
#include "w22.inc"
#include "w77.inc"
#include "pipes.inc"
#include "finhead.inc"


#declare camera_orig = camera {
        location <40 60 -230>
        direction <0 0 2.2>
        up <0 1 0>
        right <1.3 0 0>
        look_at <0 -40 0> }

#declare camera_new = camera {
        location <40 100 -200>
        direction <0 0 2.2>
        up <0 1 0>
        right <1.3 0 0>
        look_at <0 -10 0> }

camera {camera_new}

#declare lake = object {
plane { y, -445.000000
	pigment { MidnightBlue}
	normal {
		waves 0.7
		frequency 10.0
		scale 50.355804
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

union {PIPES rotate <0 -65 0> }
union { PIPES rotate <0 -65 0> translate <-130 -80 220> }
union { PIPES rotate <0 -65 0> translate <50 -20 0> }


object { W22 rotate <0 -8 0> }
object { W77 rotate <0 -8 0> }


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
 scale 8.0
}

object {dollartext translate <-45, 12, 8>}
