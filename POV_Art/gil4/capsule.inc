
// ==== Standard POV-Ray Includes ====

#ifdef(Caps_Inc_Temp)
// do nothing
#else
#declare Caps_Inc_Temp = version
#version 3.0


#include "colors.inc"	// Standard Color definitions
#include "textures.inc"	// Standard Texture definitions


// Capped Cylinder, closed [or open ended]
// cylinder { <END1>, <END2>, RADIUS [open] }
//  END1 = coord of one end of cylinder
//  END2 = coord of other end
// RADIUS = size of cylinder
// open = if present, cylinder is hollow, else capped

#declare h_capsule = union {
 cylinder
 {
  0*x,  2*x,  1
  // open
 }

// create a sphere shape
 sphere
 {
  <2, 0, 0> // center of sphere <X Y Z>
  1       // radius of sphere
  // scale <1,2,1> // <= Note: Spheres can become ellipses by uneven scaling
 }
}

#declare h_capsule2 = object {h_capsule rotate <0, 0, 180>}

#declare capsule_yb = union {
         object {h_capsule pigment {Yellow}}
         object {h_capsule2 pigment {Gray20}}
         scale <2, 2, 2>
}

#declare capsule_gy = union {
         object {h_capsule pigment {Yellow}}
         object {h_capsule2 pigment {Green}}
         scale <2, 2, 2>
}

#declare capsule_bw = union {
         object {h_capsule pigment {Blue}}
         object {h_capsule2 pigment {White}}
         scale <2, 2, 2>
}


#version Caps_Inc_Temp
#end
