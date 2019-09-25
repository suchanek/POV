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

#declare camera2 = camera {
   location < 0, 12, -50 > 
   direction < 0, 0, 1> 
   up <0, 1, 0> 
   right <3/4, 0, 0> 
   look_at <0, 3, 0> 
}

camera {
   location < 0, 14, -45 > 
   direction < 0, 0, 1> 
   up <0, 1, 0> 
   right <3/4, 0, 0> 
   look_at <0, 4.5, 0> 
}

object { 
  light_source {
     <12.341, 7.409, -32.129> 
     color White 
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
#declare ATM_SCL = 1.00 
 
#declare dihydrochlam_obj = union {
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.256, -1.669, 1.606> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.713, -1.989, 1.622> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.048, -3.210, 0.758> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.103, -2.259, 3.054> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.461, -0.722, 1.128> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.192, -0.098, 1.851> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.191, -0.357, -0.161> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.466, 0.975, -0.716> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.167, 0.910, -2.050> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-5.534, 0.253, -1.979> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.664, 1.008, -1.694> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-5.678, -1.080, -2.205> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.884, 0.397, -1.584> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.924, -1.700, -2.136> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.008, -0.981, -1.848> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.069, 1.619, -0.804> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.344, 1.290, -1.760> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.644, 2.383, 0.196> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.215, 2.766, 0.313> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.285, 4.048, 1.143> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.493, 3.883, 2.005> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.427, 2.957, 1.304> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.503, 1.617, 0.994> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.862, 1.679, 2.166> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.685, 0.510, 0.242> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.884, -0.828, 0.803> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.071, -1.565, 0.209> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.358, -0.765, 0.314> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.604, -1.532, -0.042> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.842, -0.614, -0.079> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.162, -1.358, -0.199> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.338, -0.366, -0.152> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <9.550, -0.963, 0.340> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.557, 0.232, -1.500> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.911, 1.506, -1.916> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <9.343, 1.440, -1.574> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.460, -1.523, 0.550> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.789, -1.789, -0.622> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.928, -1.836, 2.233> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.905, -2.753, -0.044> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.026, -3.404, 0.809> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.785, -3.715, 1.181> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.986, -1.681, 3.463> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.663, -2.872, 3.269> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.088, -2.349, 3.141> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.731, -0.888, -0.646> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.956, 1.283, -0.052> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.564, 0.414, -2.825> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.323, 1.616, -2.864> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.425, 2.112, -1.747> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.749, -1.667, -2.165> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.484, 0.825, -1.626> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.040, -2.679, -2.280> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.546, -1.847, -1.932> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.168, 2.899, -0.523> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.065, 4.909, 0.823> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.514, 4.114, 1.670> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.170, 4.632, 2.213> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.181, 3.469, 2.887> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.835, 2.103, 1.831> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.419, 3.427, 1.133> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.357, 0.623, -0.599> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.052, -0.727, 1.754> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.882, -1.636, -0.672> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.093, -2.392, 0.580> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.336, -0.056, -0.347> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.358, -0.214, 1.122> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.445, -1.945, -1.071> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.767, -2.218, 0.572> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.813, 0.105, 0.647> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.763, 0.003, -1.018> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.069, -1.976, 0.527> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.136, -1.906, -1.082> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.135, 0.319, 0.519> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <9.841, -1.601, -0.257> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.730, -0.580, -2.294> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.126, 1.893, -2.770> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.496, 2.091, -1.132> }
}

#declare dihydrochlam = object {
	object { dihydrochlam_obj } 
	rotate <0, 0, 90>
	translate <0, 9.5, -8>
/*	bounded_by {sphere {<0 0 0> 12.723} } */
     } 

#include "bj.inc"

#declare bj = object {
	bell_jar scale <11 5 11 >
	translate <0, -3.5, 0>
	}


#declare object_dihydrochlam_bell = union {
	object  {dihydrochlam}
	object {bj}
}

object {object_dihydrochlam_bell}
