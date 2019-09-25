
// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3
// Desc: Basic Scene Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3

#include "colors.inc"
#include "bell_jar.inc"
#include "shapes.inc"
#include "glass.inc"

#declare T01 = texture { T_Glass1 }
#declare T02 = texture { T_Glass2 }
#declare T03 = texture { T_Glass3 }
#declare T04 = texture { T_Glass4 }
#declare T05 = texture { T_Old_Glass }

#declare T06 = texture { T_Winebottle_Glass }
#declare T07 = texture { T_Beerbottle_Glass }
#declare T08 = texture { T_Ruby_Glass       }
#declare T09 = texture { T_Green_Glass      }
#declare T10 = texture { T_Dark_Green_Glass }

#declare T11 = texture { T_Yellow_Glass      }
#declare T12 = texture { T_Orange_Glass      }
#declare T13 = texture { T_Vicksbottle_Glass }

global_settings
{
  assumed_gamma 1.8
}

// ----------------------------------------
camera
{
  location  <0.0, 60, -45.0>
//  direction 1.5*z
  right     4/3*x
  look_at   <0.0, 5.0,  0.0>
}

sky_sphere
{
  pigment
  {
    gradient y
    color_map { [0.0 color blue 0.6] [1.0 color rgb 1] }
  }
}

light_source
{
  0*x // light's position (translated below)
  color red 1.0  green 1.0  blue 1.0  // light's color
  translate <-30, 300, -10>
}

// ----------------------------------------
plane { y, -1 pigment {color rgb <0.7,0.5,0.3>}}

#declare GoldMetal1 = texture {pigment {color BrightGold} finish {Metal}}

#declare MyPost = 
// Capped Cylinder, closed [or open ended]
// cylinder { <END1>, <END2>, RADIUS [open] }
//  END1 = coord of one end of cylinder
//  END2 = coord of other end
// RADIUS = size of cylinder
// open = if present, cylinder is hollow, else capped
merge{
 cylinder
 {
  0*x,  5*y,  1
  hollow
 }
 sphere {5.25*y, 1.0 hollow}
 texture{T04}
}
 
#declare rad = 4
#declare xpos = 0.0
#declare ypos = 0.0
#declare theta = 0.0
#declare ypos = 1
#declare zpos = -20

#declare torad = 3.14159 / 180.0

#declare Count=40

#declare total = 360
#declare increment = total / (Count)

  #while (theta < total)
    #declare xpos = rad * cos((2 * torad * theta))
    #declare zpos = rad * sin((2 * torad * theta))
    #declare ypos = ypos +  .75
    #declare rad = rad * .95
    
    //object{MyPost translate <xpos, ypos, zpos>}
    sphere { <xpos, ypos, zpos>, rad texture {pigment {radial frequency 8} finish{specular 1}} }
    
    #declare theta = theta + increment
  #end



/*
#declare xpos = -25.0
#declare ypos = 0.0
#declare zpos = -20
#declare rad = 1.0
#declare xrow = 0
#declare zrow = 0
#declare Count = 30
#declare mscale = 1.5

#while (xrow < Count)
 #declare xpos = xpos + rad * mscale
 #declare zrow = 0
 #declare zpos = -60
 #while (zrow < 2 * Count)
  #declare zpos = zpos + rad * mscale
  sphere { <xpos, ypos, zpos>, rad texture {GoldMetal1} }
  #declare zrow = zrow + 1
 #end
 #declare xrow = xrow + 1
#end
*/    
  
  
//sphere { 0.0, 1 texture {pigment {radial frequency 8} finish{specular 1}} }

