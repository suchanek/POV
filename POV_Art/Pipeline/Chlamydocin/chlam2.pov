//
// PDB2POV (UNIX) atom input prepared by pdb2pov 08/26/96 11:48:01
// Author: Eric G. Suchanek, Ph.D. 
// Mac port: Richard G. Rothwell, Ph.D. 
//	Atoms:   76 
//	Extent:	Xmin: -10.651 Xmax: 11.811, 
//		Ymin: -5.904, Ymax: 7.393
//		Zmin: -5.725 Zmax: 6.523 
//	Enclosing Sphere: 12.203

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
camera {
   location < 0, 0, -27.799 > 
   direction < 0, 0, 1> 
   up <0, 1, 0> 
   right <4/3, 0, 0> 
   look_at <0, 0, 0> 
}
object { 
  light_source {
     <11.811, 7.393, -30.858> 
     color White 
  }
}
/* A plain white sky */ 
sphere { <0, 0, 0>, 3000 
         pigment { colour White } 
         finish { 
           ambient 0.7 
           diffuse 0   
          } 
       } 
#declare BOND_RADIUS = 0.17 
#declare ATM_SCL = 0.30 
 
#declare chlam2_obj = union {
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.365, -0.815, 1.946> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.176, 0.099, 2.311> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.781, -1.222, 1.892> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.372, -1.024, 3.319> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.452, -1.240, 3.334> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.867, -1.703, 4.023> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.224, 0.009, 3.667> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.120, -2.663, 1.412> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.654, -3.404, 2.078> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.210, -2.816, 1.433> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.788, -2.855, 0.380> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.379, -0.224, 0.919> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.335, 0.462, 1.244> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.750, -0.117, -0.275> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.038, -0.770, -0.546> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.826, 1.265, -2.105> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.700, 1.746, -0.785> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.599, 1.330, -3.225> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.735, -0.205, -2.968> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-5.998, 0.471, -2.311> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.003, 1.533, -2.533> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.206, -0.184, -2.060> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.141, 0.366, -2.093> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.212, -1.552, -1.765> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.151, -2.060, -1.562> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.009, -2.262, -1.734> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.012, -3.323, -1.505> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.877, -2.170, -1.978> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.805, -1.607, -1.995> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.790, -0.234, -2.273> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.461, 0.494, -2.522> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.954, 1.028, -1.158> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.561, 1.623, -1.201> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.122, 2.461, -0.225> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.024, 3.098, 0.725> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.714, 3.768, 0.189> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.586, 2.387, 1.347> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.027, 3.923, 1.577> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.742, 3.350, 2.474> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.439, 4.893, 1.902> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.207, 4.079, 0.652> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.124, 4.361, 1.191> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.012, 4.856, -0.101> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.306, 2.708, -0.056> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.821, 1.604, 0.847> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.266, 1.889, 1.946> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.880, 2.769, -0.993> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.738, 0.328, 0.400> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.983, -0.815, 1.285> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.104, -1.703, 0.679> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.432, -0.909, 0.551> }
object {Atom_Cd scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.566, -1.791, -0.043> }
object {Atom_Ce scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.892, -0.992, -0.173> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.023, -1.866, -0.775> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.332, -1.118, -0.832> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.400, 0.110, -1.698> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <9.308, 1.105, -1.307> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.999, 1.437, -0.923> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.954, 1.474, 0.175> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.688, 2.345, -1.466> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <8.045, 0.102, -2.739> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <9.311, -1.490, -0.208> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <6.752, -2.183, -1.794> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.153, -2.770, -0.158> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.719, -0.117, -0.822> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <6.203, -0.633, 0.821> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.727, -2.663, 0.610> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.261, -2.155, -1.037> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.738, -0.545, 1.545> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.274, -0.035, -0.103> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.261, -2.583, 1.328> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.794, -2.060, -0.315> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.347, -1.531, 1.405> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.438, -2.676, 0.993> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.293, -0.515, 2.299> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.446, 0.127, -0.537> }
cylinder { <0.74, 0.33, 0.40>, <0.45, 0.13, -0.54>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.98, -0.81, 1.28>, <1.29, -0.51, 2.30>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-0.35, -1.53, 1.41>, <-0.44, -2.68, 0.99>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.98, -0.81, 1.28>, <-0.35, -1.53, 1.41>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.36, -0.81, 1.95>, <-0.35, -1.53, 1.41>, BOND_RADIUS texture {White_Bond} } 
cylinder { <2.10, -1.70, 0.68>, <1.79, -2.06, -0.31>, BOND_RADIUS texture {White_Bond} } 
cylinder { <2.10, -1.70, 0.68>, <2.26, -2.58, 1.33>, BOND_RADIUS texture {White_Bond} } 
cylinder { <3.43, -0.91, 0.55>, <3.27, -0.03, -0.10>, BOND_RADIUS texture {White_Bond} } 
cylinder { <3.43, -0.91, 0.55>, <3.74, -0.54, 1.54>, BOND_RADIUS texture {White_Bond} } 
cylinder { <4.57, -1.79, -0.04>, <4.26, -2.15, -1.04>, BOND_RADIUS texture {White_Bond} } 
cylinder { <4.57, -1.79, -0.04>, <4.73, -2.66, 0.61>, BOND_RADIUS texture {White_Bond} } 
cylinder { <5.89, -0.99, -0.17>, <6.20, -0.63, 0.82>, BOND_RADIUS texture {White_Bond} } 
cylinder { <5.89, -0.99, -0.17>, <5.72, -0.12, -0.82>, BOND_RADIUS texture {White_Bond} } 
cylinder { <7.02, -1.87, -0.77>, <7.15, -2.77, -0.16>, BOND_RADIUS texture {White_Bond} } 
cylinder { <7.02, -1.87, -0.77>, <6.75, -2.18, -1.79>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.33, -1.12, -0.83>, <9.31, -1.49, -0.21>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.40, 0.11, -1.70>, <8.05, 0.10, -2.74>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.00, 1.44, -0.92>, <7.69, 2.35, -1.47>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.00, 1.44, -0.92>, <7.95, 1.47, 0.18>, BOND_RADIUS texture {White_Bond} } 
cylinder { <9.31, 1.10, -1.31>, <8.00, 1.44, -0.92>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.40, 0.11, -1.70>, <8.00, 1.44, -0.92>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.40, 0.11, -1.70>, <9.31, 1.10, -1.31>, BOND_RADIUS texture {White_Bond} } 
cylinder { <8.33, -1.12, -0.83>, <8.40, 0.11, -1.70>, BOND_RADIUS texture {White_Bond} } 
cylinder { <7.02, -1.87, -0.77>, <8.33, -1.12, -0.83>, BOND_RADIUS texture {White_Bond} } 
cylinder { <5.89, -0.99, -0.17>, <7.02, -1.87, -0.77>, BOND_RADIUS texture {White_Bond} } 
cylinder { <4.57, -1.79, -0.04>, <5.89, -0.99, -0.17>, BOND_RADIUS texture {White_Bond} } 
cylinder { <3.43, -0.91, 0.55>, <4.57, -1.79, -0.04>, BOND_RADIUS texture {White_Bond} } 
cylinder { <2.10, -1.70, 0.68>, <3.43, -0.91, 0.55>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.98, -0.81, 1.28>, <2.10, -1.70, 0.68>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.74, 0.33, 0.40>, <0.98, -0.81, 1.28>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.82, 1.60, 0.85>, <0.74, 0.33, 0.40>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.31, 2.71, -0.06>, <0.88, 2.77, -0.99>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.82, 1.60, 0.85>, <1.27, 1.89, 1.95>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.31, 2.71, -0.06>, <0.82, 1.60, 0.85>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.21, 4.08, 0.65>, <0.31, 2.71, -0.06>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.12, 2.46, -0.22>, <0.31, 2.71, -0.06>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.21, 4.08, 0.65>, <-0.01, 4.86, -0.10>, BOND_RADIUS texture {White_Bond} } 
cylinder { <0.21, 4.08, 0.65>, <1.12, 4.36, 1.19>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.03, 3.92, 1.58>, <0.21, 4.08, 0.65>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.03, 3.92, 1.58>, <-1.44, 4.89, 1.90>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.03, 3.92, 1.58>, <-0.74, 3.35, 2.47>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.02, 3.10, 0.73>, <-1.03, 3.92, 1.58>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.02, 3.10, 0.73>, <-2.59, 2.39, 1.35>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.02, 3.10, 0.73>, <-2.71, 3.77, 0.19>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.12, 2.46, -0.22>, <-2.02, 3.10, 0.73>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.56, 1.62, -1.20>, <-1.12, 2.46, -0.22>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.95, 1.03, -1.16>, <-1.56, 1.62, -1.20>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-0.83, 1.26, -2.10>, <-1.56, 1.62, -1.20>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.46, 0.49, -2.52>, <-2.95, 1.03, -1.16>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.70, 1.75, -0.78>, <-2.95, 1.03, -1.16>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.75, -0.12, -0.27>, <-2.95, 1.03, -1.16>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-4.79, -0.23, -2.27>, <-3.46, 0.49, -2.52>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.73, -0.20, -2.97>, <-3.46, 0.49, -2.52>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.60, 1.33, -3.23>, <-3.46, 0.49, -2.52>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-4.80, -1.61, -2.00>, <-4.79, -0.23, -2.27>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-6.00, 0.47, -2.31>, <-4.79, -0.23, -2.27>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.88, -2.17, -1.98>, <-4.80, -1.61, -2.00>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-6.01, -2.26, -1.73>, <-4.80, -1.61, -2.00>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-6.01, -2.26, -1.73>, <-6.01, -3.32, -1.50>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-7.21, -1.55, -1.76>, <-6.01, -2.26, -1.73>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-7.21, -1.55, -1.76>, <-8.15, -2.06, -1.56>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-7.21, -0.18, -2.06>, <-7.21, -1.55, -1.76>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-7.21, -0.18, -2.06>, <-8.14, 0.37, -2.09>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-6.00, 0.47, -2.31>, <-7.21, -0.18, -2.06>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-6.00, 0.47, -2.31>, <-6.00, 1.53, -2.53>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.75, -0.12, -0.27>, <-2.04, -0.77, -0.55>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.38, -0.22, 0.92>, <-2.75, -0.12, -0.27>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.38, -0.22, 0.92>, <-4.33, 0.46, 1.24>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.78, -1.22, 1.89>, <-3.38, -0.22, 0.92>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.12, -2.66, 1.41>, <-2.79, -2.85, 0.38>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.12, -2.66, 1.41>, <-4.21, -2.82, 1.43>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.12, -2.66, 1.41>, <-2.65, -3.40, 2.08>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.78, -1.22, 1.89>, <-3.12, -2.66, 1.41>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.37, -1.02, 3.32>, <-3.22, 0.01, 3.67>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.37, -1.02, 3.32>, <-2.87, -1.70, 4.02>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-3.37, -1.02, 3.32>, <-4.45, -1.24, 3.33>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-2.78, -1.22, 1.89>, <-3.37, -1.02, 3.32>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.36, -0.81, 1.95>, <-2.78, -1.22, 1.89>, BOND_RADIUS texture {White_Bond} } 
cylinder { <-1.36, -0.81, 1.95>, <-1.18, 0.10, 2.31>, BOND_RADIUS texture {White_Bond} } 
}

#declare chlam2 = object {
	object { chlam2_obj } 
	rotate <0, 90, 0>
	bounded_by {sphere {<0 0 0> 12.203} }
     } 

object { chlam2 } 
