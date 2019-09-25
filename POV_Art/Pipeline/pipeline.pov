//
// Persistence of Vision Ray Tracer Scene Description File
// File: pipeline.pov
// Vers: 3
// Desc: P&GP Pipeline drugs
// Date: 2/7/97
// Auth: Eric G. Suchanek, Ph.D.

#version 3.0
global_settings { assumed_gamma 1.6 }

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
// objects to render
//

#declare AZIMILIDE = 1
#declare RISEDRONATE = 2
#declare QLA = 3
#declare NE11040 = 4
#declare PG117117 = 5

#declare OBJECT = PG117117

//
// Aspect ratios for camera right vectors
//

#declare EIGHTBYTEN = .8
#declare TENBYEIGHT = 1.25

#declare FOURBYTHREE = 1.33333
#declare PC_ASPECT = 1.33333
#declare THREEBYFOUR = .75

#declare ASPECT = EIGHTBYTEN

#declare camera_main = camera {
   location < 2, 0, -45 >
   right <ASPECT, 0, 0>
   look_at <0, 0, 0>
}

#declare camera_close = camera {
location < 0, 6, -30 >
   right <ASPECT, 0, 0>
   look_at <0, 0, 0>
   // angle 50
}

#declare camera_ne11040 = camera {
location < 0, 6, -30 >
   right <ASPECT, 0, 0>
   look_at <-0, 0, 0>
   // angle 60
}

#declare camera_pg117117 = camera {
location < 0, 6, -20 >
   right <ASPECT, 0, 0>
   look_at <-0, 0, 0>
   // angle 60
}

#declare camera_top = camera {
   location < 0, 60, -.1 >
   right <ASPECT, 0, 0>
   look_at <0, 0, 0>
}

//
// global light source
//

/*
object {
  light_source {
     <10.225, 8.082, -20.039>
     color Gray50

  }
}
*/

object {
  light_source {
     <10.225, 8.082, -50.039>
     color Gray80

  }
}


background { color SkyBlue }

//
// my signature
//

#declare egstext = object {
 text
 {
  ttf                       // font type (only TrueType format for now)
  "timrom.ttf",             // Microsoft Windows-format TrueType font file name
  "E. G. Suchanek, '97",   // the string to create
  .25,                     // the extrusion depth
  0                        // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }
 }
}


#if (DO_SKY = true)
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

sky_sphere{Sky}

#end // if do_sky


/* Create the beloved famous raytrace checkered floor */

#if (DO_GROUND = true)
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
#end // if do_ground


#if (DO_RAINBOW)

#declare r_violet1 = colour rgbf<1.0, 0.5, 1.0, 0.9>
#declare r_violet2 = colour rgbf<1.0, 0.5, 1.0, 0.8>
#declare r_indigo  = colour rgbf<0.5, 0.5, 1.0, 0.8>
#declare r_blue    = colour rgbf<0.2, 0.2, 1.0, 0.8>
#declare r_cyan    = colour rgbf<0.2, 1.0, 1.0, 0.8>
#declare r_green   = colour rgbf<0.2, 1.0, 0.2, 0.8>
#declare r_yellow  = colour rgbf<1.0, 1.0, 0.2, 0.8>
#declare r_orange  = colour rgbf<1.0, 0.5, 0.2, 0.8>
#declare r_red1    = colour rgbf<1.0, 0.2, 0.2, 0.8>
#declare r_red2    = colour rgbf<1.0, 0.2, 0.2, 0.9>

rainbow {
    angle 42.5
    width 5
    distance 1.0e7
   // direction <0.2, -0.2, 1>
    direction <0.2, -0.2, .6>
    jitter 0.01
    arc_angle 240
    falloff_angle 30

    colour_map {
      [0.000  colour r_violet1 transmit 0.98]
      [0.100  colour r_violet2 transmit 0.96]
      [0.214  colour r_indigo  transmit 0.94]
      [0.328  colour r_blue    transmit 0.92]
      [0.442  colour r_cyan    transmit 0.90]
      [0.556  colour r_green   transmit 0.92]
      [0.670  colour r_yellow  transmit 0.94]
      [0.784  colour r_orange  transmit 0.96]
      [0.900  colour r_red1    transmit 0.98]
    }

 /*
    colour_map {
      [0.000  colour r_violet1 transmit 0]
      [0.100  colour r_violet2 transmit 0]
      [0.214  colour r_indigo  transmit 0]
      [0.328  colour r_blue    transmit 0]
      [0.442  colour r_cyan    transmit 0]
      [0.556  colour r_green   transmit 0]
      [0.670  colour r_yellow  transmit 0]
      [0.784  colour r_orange  transmit 0]
      [0.900  colour r_red1    transmit 0]
    }
*/
  }

#end // if do_rainbow

/* Object definitions follow */

#declare BOND_RADIUS = 0.17
#declare ATM_SCL = 1

//
// azimilide
//

#if (OBJECT = AZIMILIDE)
#include "azimilide2.inc"

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


/*
light_source
{
    <CENTER>
    color <COLOUR>
    [ spotlight ]
    [ cylinder ]
    [ point_at <POINT> ]
    [ radius RADIUS ]
    [ falloff FALLOFF ]
    [ tightness TIGHTNESS ]
    [ area_light <AXIS1>, <AXIS2>, SIZE1, SIZE2 ]
    [ adaptive ADAPTIVE ]
    [ jitter JITTER ]
    [ looks_like { OBJECT } ]
    [ fade_distance FADE_DISTANCE ]
    [ fade_power FADE_POWER (1...2) ]
    [ atmospheric_attenuation BOOL ]
    [ shadowless ]
}
*/

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

#end

//
// risedronate
//

#if (OBJECT = RISEDRONATE)
#include "risedronate.inc"


// create a TrueType text shape
#declare risedronate_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Risedronate",   // the string to create
  .75,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

#declare rised_orient = object {risedronate rotate 90*z}

#declare rised_labeled = union {
  object {         rised_orient
                   rotate <0, -45, 0>
                   translate <0,2,0>
                   scale 1.5
                   }
  object { risedronate_text translate <-7, -13, -1> }
}
object {
  light_source {
     <0.225, 100.082, -20.039>
     color White
  }
}

object {rised_labeled}
camera {camera_close}

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <11, -10.75, -8>
         }

#end

//
// QLA
//

#if (OBJECT = QLA)
#include "qla.inc"


// create a TrueType text shape
#declare qla_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "PG-125378",   // the string to create
  .75,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

#declare qla_shadow =
  object {
          qla
          rotate <0,-30,0>
          translate <0,12,5>
          scale 2.8
         }

object {
  light_source {
     <0.225, 10.0, -30.039>
     color White
//     shadowless
  }
}

camera {camera_close}
//object {qla_shadow}
object { qla_text translate <-7, -13, -3> }
object {
          qla
          rotate <0,30,5>
          translate <-2,2,-5>
          scale 1
         }

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <11, -10.75, -8>
         }

#end

//
// risedronate
//

#if (OBJECT = NE11040)
#include "ne11040.inc"


// create a TrueType text shape
#declare ne11040_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "NE-11040",   // the string to create
  .75,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

#declare ne11040_orient = object {ne11040 rotate 90*z}

#declare ne11040_labeled = union {
  object {         ne11040
                   rotate <0, 0, 90>
                   translate <0,2,0>
                   scale 1.0
                   }
  object { ne11040_text translate <-6, -13, -2> }
}
object {
  light_source {
     <0.225, 100.082, -20.039>
     color White
     shadowless
  }
}

object {ne11040_labeled}
camera {camera_ne11040}

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <6, -13, -5>
         }

#end

//
// risedronate
//

#if (OBJECT = PG117117)
#include "pg117117.inc"


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

#end


//
// end of file pipeline.pov
//

