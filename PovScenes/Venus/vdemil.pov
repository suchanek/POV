// The Royal Bank of Scotland text and logo
//
#include "colors.inc"
#include "textures.inc"
#include "column.inc"
#include "pedestal.inc"
#include "venus1.inc"
#include "marble2.inc"

camera {
        location  <15, 15, -15>
        direction <0, 0, 1.4>
        up        <0, 1, 0>
        right     <4/3, 0, 0>
        look_at   <-4, 0, 4>
        }

light_source {
   <30, 30, -30> color red 1 green 1 blue 0.5
   spotlight
   point_at <0, 1, 0>
   tightness 50
   radius 21
   falloff 45

   looks_like {
      sphere {
         <10, 10, 0>, 0.5
         texture {
            pigment { White }
            finish { Luminous }
         }
      }
   }
}

light_source {
   <-30, 30, -30> color red 0.5 green 0.5 blue 1.0
   spotlight
   point_at <0, 1, 0>
   tightness 50
   radius 21
   falloff 45
}

light_source {
   <0, 30, -30> color red 1.0 green 0.1 blue 0.1
   spotlight
   point_at <0, 1, 0>
   tightness 20
   radius 21
   falloff 55
}


#declare SemiCircle = union {
        object { Column scale 0.25
                translate <24, 0, 0> }

        object { Column scale 0.25
                translate <24, 0, 0>
                rotate <0, -30, 0> }

        object { Column scale 0.25
                translate <24, 0, 0>
                rotate <0, -60, 0> }

        object { Column scale 0.25
                translate <24, 0, 0>
                rotate <0, -90, 0> }

        object { Column scale 0.25
                translate <24, 0, 0>
                rotate <0, -120, 0> }

        object { Column scale 0.25
                translate <24, 0, 0>
                rotate <0, -150, 0> }

        object { Column scale 0.25
                translate <24, 0, 0>
                rotate <0, -180, 0> }
        }

object { SemiCircle
/*
        texture {
                pigment {
                        granite
                        turbulence 0.0
                        color_map {
                [0.0, 0.3 color White filter 0.0 color DimGray filter 0.5]
                [0.3, 0.4 color DimGray filter 0.5 color DimGray filter 0.8]
                [0.4, 1.0 color DimGray filter 0.8 color DimGray filter 0.9]
                                }
                        }
                finish {
                        specular 0.6
                        ambient 0.3
                        diffuse 0.8
                        crand 0.02
                        }
                scale 7
                }
*/
        pigment { color White }
        translate <0, -4, 0>
        }

object {
        Pedestal
        scale 0.25
        rotate <0, -65, 0>
        translate <0, -4, 0>
        }

object {
        VenusDeMilo
       
        pigment { color White }
        texture {
          marble1
          scale <5, 3, 5>
          finish {
            ambient 0.5
            diffuse 1
          }
        }
        translate <0, 3.5, 0>
        }

plane { y, 0
        texture {
                pigment {
                        marble
                        color_map {
                        [0.0 0.4 color Clear color rgbf <0.9, 0.9, 0.9, 0.7>]
                        [0.4 1.0 color rgbf <1, 1, 1, 0.7> color Clear]
                                }
           /*             turbulence 0.9 */
                        }
                finish {
                        ambient 0.7
                        }
                }
        scale <32, 44, 20>
        }

plane { y, -4
        pigment {
                checker colour red 1.0 blue 1.0 green 1.0
                        colour red 0.1 green 0.6 blue 0.1
                scale 8
                }
        finish {
                reflection 0.5
                ambient 0.1
                diffuse 0.8
                }
        }

object {
        sphere { <0, 0, 0>, 1 }
        texture {
                pigment {
                        bozo
                        color_map {
              [0.0, 0.4  color rgb <0.8, 0.0, 0.0> color rgb <0.4, 0.0, 0.4>]
              [0.4, 0.6  color rgb <0.4, 0.0, 0.4> color rgb <0.0, 0.0, 0.2>]
              [0.6, 1.01 color rgb <0.0, 0.0, 0.2> color rgb <0.0, 0.0, 0.0>]
                                }
                        }
                       /* turbulence 2/3 */
                        scale <0.8, 0.8989, 0.8989>
                finish {
                        ambient 1
                        diffuse 0
                        }
                }
        scale <10000, 10000, 10000>
    }
