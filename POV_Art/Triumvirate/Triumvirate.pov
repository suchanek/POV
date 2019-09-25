//              Triumvirate.pov
//
// The three major forms of DNA.
//
//
// These data and any resulting derivative images real or virtual are copyright
// (c) 1997, Eric G. Suchanek, Ph.D.
//
// The user is hereby licensed restricted non-commercial use of these
// data and images, provided that this copyright notice remain
// attached to all neccessary data files.
//
//
//


#version 3.0
global_settings { assumed_gamma 1.8 }

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "skies.inc"

#include "bna7_full.inc"
#include "zdna_full.inc"
#include "adna2.inc"

#declare DO_SEA = true
#declare DO_CHECK = false

#declare ASPECT = 1.25

#declare main_camera = camera {
   location < 0, 30, -130 >
   right <ASPECT, 0, 0>
   look_at <0, 18, 0>
}

#declare adna_camera = camera {
   location < 0, 30, -20 >
   right <ASPECT, 0, 0>
   look_at <0, 18, 50>
}

#declare adna_camera2 = camera {
   location < -70, 30, 50 >
   right <ASPECT, 0, 0>
   look_at <0, 18, 50>
}


camera {main_camera}

object {
  light_source {
     <-13.112195, 70, -30.898306>
     color White
  }
}

object {
  light_source {
     <-100, 100, -1000>
     color Gray50
  }
}

background { color MidnightBlue }

#declare Sky = sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.5  color CornflowerBlue]
      [1.00  color MidnightBlue]
    }
    scale 2
    translate <-1, -1, -1>
  }
  pigment {
    bozo
    turbulence 0.4
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
    turbulence 0.4
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





// ----------------------------------------

#if (DO_CHECK)
plane
{
  y, -12.5
  texture
  {
    pigment {checker color White color Black
            scale 20}
    finish {reflection 0.2}
  }
}
#end

#if (DO_SEA)
plane { y, -12.5
 pigment { Sapphire_Agate  scale 15.0}
   finish {
      specular 0.6
      ambient 0.2
      diffuse 0.8
   }
}
#end


sky_sphere { Sky }
// my signature
//

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

#declare titletext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "DNA Motifs",   // the string to create
  .1,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }
 }
}

#declare bdnatext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "B-DNA",   // the string to create
  .2,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }
 }
}

#declare zdnatext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "Z-DNA",   // the string to create
  .2,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }
 }
}

#declare adnatext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "A-DNA",   // the string to create
  .2,           // the extrusion depth
  0            // offset
   pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }
 }
}

//#include "marble.inc"

#declare TitleStone = union {
  object {
          box { <-5, -.8, 0.1>, <6, .8, 1> }
          texture { marble1 }

         }
  object { titletext
           translate <-4.5, -1, 0.5>
         }
}

#declare EGS_Sig = union {
  object { egstext
           scale 4
           translate <-14, -0, -0.5>
          }
  object {
          box { <-5, -1, 0.1>, <6, 1, 1> }
          texture { marble1 }
          scale 3
         }

 }


//
// the actual scene objects
//

#declare bdna_labeled = union {
 object { bna7_full_belljar translate <0.0, 0.0, 7.0>}
 object {bdnatext
          rotate 5*x
          scale 6
          translate <-8, -9.5, -28>
         }
}



#declare zdna_labeled = union {
 object { bell_jar_zdna translate <-0.0, 0.0, 7.0>}
 object {zdnatext
          rotate 5*x
          scale 6
          translate <-10, -9.5, -28>
         }
}


#declare adna_labeled = union {
  object {bell_jar_adna translate <0, 0, 7>}
  object {adnatext
          rotate 5*x
          scale 6
          translate <-8, -9.5, -28>
          }
  }


 object {bdna_labeled rotate y*0  translate <-45, 0, -20>}
 object {zdna_labeled rotate y*0  translate < 45,  0, -20>}
 object {adna_labeled rotate y*0   translate < 0,  0, 40>}

object {titletext
       rotate x*5
       scale 8
//       translate<-18,-12,-60>
       translate<-20,50,-60>
       }
//
// my sig
//

object {egstext
          scale 2
          translate <26, -11, -60>
          }

