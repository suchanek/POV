// Persistence Of Vision raytracer version 3.0 sample file.
// Used by pigment/normal pattern example scenes

#version 3.0
global_settings { assumed_gamma 2.2 }
#include "colors.inc"

camera {
  location <0,1,-14>
  direction 3*z
}

plane {
  y, -1.01
  pigment {checker White, Magenta}
}

plane {
  z, 3.01
  pigment {checker White, Magenta}
}

light_source { <300, 500, -500> color Gray65}
light_source { <-50,  10, -500> color Gray65}

#declare T1=
 texture{
   pigment{
     spiral1 5
     color_map{[0.0 Black][1.0 White]}
     scale 0.24
   }
 }

#declare T2=
 texture{
   pigment{White}
   normal{
     spiral1 5, 0.6
     scale 0.24
   }
   finish{phong 0.8 phong_size 200}
 }
 
sphere {0,1
  texture{T1}
  translate <-2, 2, 0>
}

sphere {0,1
  texture{T2}
  translate -2*x
}

cylinder{
  -z,z,1
  scale .75
  texture{T1}
  rotate <-30,30,0>
  translate 2*y
}

cylinder{
  -z,z,1
  scale .75
  texture{T2}
  rotate <-30,30,0>
}

box{<-1,-1,-1>,<1,1,1>
  scale .75
  texture{T1}
  rotate <-30,30,0>
  translate <2,2,0>
}

box{<-1,-1,-1>,<1,1,1>
  scale .75
  texture{T2}
  rotate <-30,30,0>
  translate 2*x
}

