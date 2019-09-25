//
// PDB2POV (DOS) atom input prepared by pdb2pov 02/06/97 16:56:09
// Author: Eric G. Suchanek, Ph.D. 
// Mac port: Richard G. Rothwell, Ph.D. 
//	Atoms:   64 
//	Extent:	Xmin: -11.441 Xmax: 10.025, 
//		Ymin: -7.026, Ymax: 7.882
//		Zmin: -8.607 Zmax: 7.053 
//	Enclosing Sphere: 14.527

#version 3.0
global_settings {
   max_trace_level 10 
   assumed_gamma 1.8 } 

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "skies.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"
camera {
   location < 0, 0, -23.018 > 
   direction < 0, 0, 1> 
   up <0, 1, 0> 
   right <4/3, 0, 0> 
   look_at <0, 0, 0> 
}
object { 
  light_source {
     <10.025, 7.882, -29.490> 
     color White 
  }
}
/* A plain white sky */ 
background{White} 

#declare BOND_RADIUS = 0.20 
#declare ATM_SCL = 0.30 
 
#declare az2_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-7.881, 4.153, -5.428> }
object {Atom_C scale ATM_SCL * .8 translate <-6.737, 4.289, -4.688> }
object {Atom_H scale ATM_SCL translate <-6.425, 5.166, -4.452> }
object {Atom_C scale ATM_SCL * .8 translate <-6.052, 3.152, -4.293> }
object {Atom_H scale ATM_SCL translate <-5.258, 3.233, -3.759> }
object {Atom_C scale ATM_SCL * .8 translate <-6.487, 1.888, -4.648> }
object {Atom_C scale ATM_SCL * .8 translate <-7.647, 1.789, -5.405> }
object {Atom_H scale ATM_SCL translate <-7.962, 0.918, -5.655> }
object {Atom_C scale ATM_SCL * .8 translate <-8.341, 2.915, -5.782> }
object {Atom_H scale ATM_SCL translate <-9.141, 2.840, -6.307> }
object {Atom_C scale ATM_SCL * .8 translate <-5.737, 0.701, -4.286> }
object {Atom_C scale ATM_SCL * .8 translate <-4.100, -0.358, -3.240> }
object {Atom_C scale ATM_SCL * .8 translate <-4.717, -1.268, -4.028> }
object {Atom_H scale ATM_SCL translate <-4.482, -2.193, -4.125> }
object {Atom_C scale ATM_SCL * .8 translate <-5.768, -0.587, -4.671> }
object {Atom_H scale ATM_SCL translate <-6.403, -0.964, -5.285> }
object {Atom_C scale ATM_SCL * .8 translate <-3.021, -0.504, -2.309> }
object {Atom_H scale ATM_SCL translate <-2.542, -1.335, -2.267> }
object {Atom_C scale ATM_SCL * .8 translate <-1.410, 1.123, 0.340> }
object {Atom_C scale ATM_SCL * .8 translate <-0.360, -0.824, 0.942> }
object {Atom_C scale ATM_SCL * .8 translate <-1.081, -1.092, -0.348> }
object {Atom_H scale ATM_SCL translate <-0.470, -1.355, -1.041> }
object {Atom_H scale ATM_SCL translate <-1.750, -1.771, -0.236> }
object {Atom_C scale ATM_SCL * .8 translate <-0.246, 1.088, 2.559> }
object {Atom_H scale ATM_SCL translate <-0.979, 1.626, 2.868> }
object {Atom_H scale ATM_SCL translate <-0.099, 0.393, 3.205> }
object {Atom_C scale ATM_SCL * .8 translate <2.265, 1.190, 2.081> }
object {Atom_H scale ATM_SCL translate <2.109, 0.733, 1.252> }
object {Atom_H scale ATM_SCL translate <2.984, 1.812, 1.950> }
object {Atom_C scale ATM_SCL translate <1.000, 1.938, 2.478> }
object {Atom_H scale ATM_SCL translate <0.839, 2.641, 1.844> }
object {Atom_H scale ATM_SCL translate <1.154, 2.348, 3.332> }
object {Atom_C scale ATM_SCL * .8 translate <2.687, 0.190, 3.151> }
object {Atom_H scale ATM_SCL translate <2.738, 0.627, 4.004> }
object {Atom_H scale ATM_SCL translate <2.022, -0.500, 3.204> }
object {Atom_C scale ATM_SCL * .8 translate <3.921, -1.369, 1.648> }
object {Atom_H scale ATM_SCL translate <3.583, -0.905, 0.879> }
object {Atom_H scale ATM_SCL translate <3.309, -2.078, 1.864> }
object {Atom_C scale ATM_SCL * .8 translate <5.270, -1.969, 1.353> }
object {Atom_H scale ATM_SCL translate <5.214, -2.558, 0.597> }
object {Atom_H scale ATM_SCL translate <5.885, -1.262, 1.141> }
object {Atom_C scale ATM_SCL * .8 translate <5.891, -1.768, 3.693> }
object {Atom_H scale ATM_SCL translate <6.502, -1.065, 3.459> }
object {Atom_H scale ATM_SCL translate <6.239, -2.224, 4.463> }
object {Atom_C scale ATM_SCL * .8 translate <4.552, -1.167, 4.008> }
object {Atom_H scale ATM_SCL translate <3.943, -1.870, 4.246> }
object {Atom_H scale ATM_SCL translate <4.625, -0.566, 4.753> }
object {Atom_C scale ATM_SCL * .8 translate <7.051, -3.429, 2.300> }
object {Atom_H scale ATM_SCL translate <7.314, -3.894, 3.097> }
object {Atom_H scale ATM_SCL translate <7.725, -2.786, 2.068> }
object {Atom_H scale ATM_SCL translate <6.947, -4.057, 1.582> }
object {Atom_N scale ATM_SCL translate <5.780, -2.711, 2.548> }
object {Atom_H scale ATM_SCL translate <5.027, -3.398, 2.798> }
object {Atom_N scale ATM_SCL translate <4.003, -0.437, 2.814> }
object {Atom_H scale ATM_SCL translate <4.620, 0.330, 2.549> }
object {Atom_N scale ATM_SCL translate <-2.687, 0.456, -1.532> }
object {Atom_N scale ATM_SCL translate <-1.687, 0.198, -0.628> }
object {Atom_N scale ATM_SCL translate <-0.610, 0.479, 1.283> }
object {Atom_O scale ATM_SCL translate <0.307, -1.606, 1.573> }
object {Atom_O scale ATM_SCL translate <-4.701, 0.873, -3.389> }
object {Atom_O scale ATM_SCL translate <-1.778, 2.272, 0.407> }
object {Atom_Cl scale ATM_SCL * .8 translate <3.704, -4.726, 3.338> }
object {Atom_Cl scale ATM_SCL * .8 translate <6.092, 1.625, 2.043> }
object {Atom_Cl scale ATM_SCL * .8 translate <-8.732, 5.582, -5.934> }
cylinder { <-7.881, 4.153, -5.428>, <-8.310, 4.877, -5.681>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-8.310, 4.877, -5.681>, <-8.732, 5.582, -5.934>, BOND_RADIUS texture {Bond_Cl} } 
cylinder { <4.620, 0.330, 2.549>, <5.402, 0.859, 2.296>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.402, 0.859, 2.296>, <6.092, 1.625, 2.043>, BOND_RADIUS texture {Bond_Cl} } 
cylinder { <5.027, -3.398, 2.798>, <4.316, -3.940, 3.068>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.316, -3.940, 3.068>, <3.704, -4.726, 3.338>, BOND_RADIUS texture {Bond_Cl} } 
cylinder { <-1.410, 1.123, 0.340>, <-1.590, 1.775, 0.374>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-1.590, 1.775, 0.374>, <-1.778, 2.272, 0.407>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-4.100, -0.358, -3.240>, <-4.411, 0.341, -3.314>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.411, 0.341, -3.314>, <-4.701, 0.873, -3.389>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-5.737, 0.701, -4.286>, <-5.159, 0.799, -3.837>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.159, 0.799, -3.837>, <-4.701, 0.873, -3.389>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-0.360, -0.824, 0.942>, <0.016, -1.267, 1.258>, BOND_RADIUS texture {Bond_C} } 
cylinder { <0.016, -1.267, 1.258>, <0.307, -1.606, 1.573>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-0.099, 0.393, 3.205>, <-0.257, 0.432, 2.244>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-0.257, 0.432, 2.244>, <-0.610, 0.479, 1.283>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-0.979, 1.626, 2.868>, <-0.714, 1.111, 2.076>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-0.714, 1.111, 2.076>, <-0.610, 0.479, 1.283>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-0.246, 1.088, 2.559>, <-0.488, 0.756, 1.921>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.488, 0.756, 1.921>, <-0.610, 0.479, 1.283>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-0.360, -0.824, 0.942>, <-0.469, -0.111, 1.113>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.469, -0.111, 1.113>, <-0.610, 0.479, 1.283>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-1.410, 1.123, 0.340>, <-0.966, 0.771, 0.812>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.966, 0.771, 0.812>, <-0.610, 0.479, 1.283>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-2.687, 0.456, -1.532>, <-1.687, 0.198, -0.628>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-1.750, -1.771, -0.236>, <-1.699, -0.886, -0.432>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-1.699, -0.886, -0.432>, <-1.687, 0.198, -0.628>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-0.470, -1.355, -1.041>, <-1.100, -0.657, -0.834>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-1.100, -0.657, -0.834>, <-1.687, 0.198, -0.628>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-1.081, -1.092, -0.348>, <-1.397, -0.387, -0.488>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-1.397, -0.387, -0.488>, <-1.687, 0.198, -0.628>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-1.410, 1.123, 0.340>, <-1.594, 0.618, -0.144>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-1.594, 0.618, -0.144>, <-1.687, 0.198, -0.628>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-2.542, -1.335, -2.267>, <-2.652, -0.530, -1.899>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-2.652, -0.530, -1.899>, <-2.687, 0.456, -1.532>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-3.021, -0.504, -2.309>, <-2.818, 0.021, -1.920>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-2.818, 0.021, -1.920>, <-2.687, 0.456, -1.532>, BOND_RADIUS texture {Bond_N} } 
cylinder { <4.003, -0.437, 2.814>, <4.298, -0.014, 2.682>, BOND_RADIUS texture {Bond_N} } 
cylinder { <4.298, -0.014, 2.682>, <4.620, 0.330, 2.549>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.625, -0.566, 4.753>, <4.413, -0.508, 3.784>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.413, -0.508, 3.784>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <3.943, -1.870, 4.246>, <4.046, -1.226, 3.530>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.046, -1.226, 3.530>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <4.552, -1.167, 4.008>, <4.222, -0.768, 3.411>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.222, -0.768, 3.411>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <3.309, -2.078, 1.864>, <3.607, -1.341, 2.339>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.607, -1.341, 2.339>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <3.583, -0.905, 0.879>, <3.694, -0.694, 1.847>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.694, -0.694, 1.847>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <3.921, -1.369, 1.648>, <4.016, -0.859, 2.231>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.016, -0.859, 2.231>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <2.022, -0.500, 3.204>, <3.032, -0.471, 3.009>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.032, -0.471, 3.009>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <2.738, 0.627, 4.004>, <3.431, 0.150, 3.409>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.431, 0.150, 3.409>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <2.687, 0.190, 3.151>, <3.329, -0.152, 2.983>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.329, -0.152, 2.983>, <4.003, -0.437, 2.814>, BOND_RADIUS texture {Bond_N} } 
cylinder { <5.780, -2.711, 2.548>, <5.416, -3.089, 2.673>, BOND_RADIUS texture {Bond_N} } 
cylinder { <5.416, -3.089, 2.673>, <5.027, -3.398, 2.798>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.947, -4.057, 1.582>, <6.314, -3.452, 2.065>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.314, -3.452, 2.065>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <7.725, -2.786, 2.068>, <6.728, -2.752, 2.308>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.728, -2.752, 2.308>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <7.314, -3.894, 3.097>, <6.575, -3.362, 2.823>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.575, -3.362, 2.823>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <7.051, -3.429, 2.300>, <6.427, -3.036, 2.424>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.427, -3.036, 2.424>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <6.239, -2.224, 4.463>, <6.107, -2.442, 3.506>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.107, -2.442, 3.506>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <6.502, -1.065, 3.459>, <6.187, -1.804, 3.004>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.187, -1.804, 3.004>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <5.891, -1.768, 3.693>, <5.782, -2.283, 3.121>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.782, -2.283, 3.121>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <5.885, -1.262, 1.141>, <5.761, -1.912, 1.845>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.761, -1.912, 1.845>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <5.214, -2.558, 0.597>, <5.397, -2.626, 1.573>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.397, -2.626, 1.573>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <5.270, -1.969, 1.353>, <5.580, -2.374, 1.951>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.580, -2.374, 1.951>, <5.780, -2.711, 2.548>, BOND_RADIUS texture {Bond_N} } 
cylinder { <7.051, -3.429, 2.300>, <6.929, -3.804, 1.941>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.929, -3.804, 1.941>, <6.947, -4.057, 1.582>, BOND_RADIUS texture {Bond_H} } 
cylinder { <7.051, -3.429, 2.300>, <7.365, -3.044, 2.184>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.365, -3.044, 2.184>, <7.725, -2.786, 2.068>, BOND_RADIUS texture {Bond_H} } 
cylinder { <7.051, -3.429, 2.300>, <7.260, -3.706, 2.699>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.260, -3.706, 2.699>, <7.314, -3.894, 3.097>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.552, -1.167, 4.008>, <4.661, -0.807, 4.381>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.661, -0.807, 4.381>, <4.625, -0.566, 4.753>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.552, -1.167, 4.008>, <4.271, -1.587, 4.127>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.271, -1.587, 4.127>, <3.943, -1.870, 4.246>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.239, -2.224, 4.463>, <5.440, -1.798, 4.236>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.440, -1.798, 4.236>, <4.552, -1.167, 4.008>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.502, -1.065, 3.459>, <5.473, -1.106, 3.734>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.473, -1.106, 3.734>, <4.552, -1.167, 4.008>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.891, -1.768, 3.693>, <4.552, -1.167, 4.008>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.891, -1.768, 3.693>, <6.140, -2.040, 4.078>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.140, -2.040, 4.078>, <6.239, -2.224, 4.463>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.891, -1.768, 3.693>, <6.174, -1.348, 3.576>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.174, -1.348, 3.576>, <6.502, -1.065, 3.459>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.270, -1.969, 1.353>, <5.557, -1.546, 1.247>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.557, -1.546, 1.247>, <5.885, -1.262, 1.141>, BOND_RADIUS texture {Bond_H} } 
cylinder { <5.270, -1.969, 1.353>, <5.168, -2.320, 0.975>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.168, -2.320, 0.975>, <5.214, -2.558, 0.597>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.309, -2.078, 1.864>, <4.339, -2.034, 1.609>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.339, -2.034, 1.609>, <5.270, -1.969, 1.353>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.583, -0.905, 0.879>, <4.380, -1.333, 1.116>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.380, -1.333, 1.116>, <5.270, -1.969, 1.353>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.921, -1.369, 1.648>, <5.270, -1.969, 1.353>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.921, -1.369, 1.648>, <3.636, -1.792, 1.756>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.636, -1.792, 1.756>, <3.309, -2.078, 1.864>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.921, -1.369, 1.648>, <3.677, -1.091, 1.264>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.677, -1.091, 1.264>, <3.583, -0.905, 0.879>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.687, 0.190, 3.151>, <2.359, -0.222, 3.178>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.359, -0.222, 3.178>, <2.022, -0.500, 3.204>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.687, 0.190, 3.151>, <2.795, 0.452, 3.578>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.795, 0.452, 3.578>, <2.738, 0.627, 4.004>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.984, 1.812, 1.950>, <2.718, 1.160, 2.551>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.718, 1.160, 2.551>, <2.687, 0.190, 3.151>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.109, 0.733, 1.252>, <2.213, 0.515, 2.202>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.213, 0.515, 2.202>, <2.687, 0.190, 3.151>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.265, 1.190, 2.081>, <2.687, 0.190, 3.151>, BOND_RADIUS texture {Bond_C} } 
cylinder { <1.000, 1.938, 2.478>, <1.160, 2.183, 2.905>, BOND_RADIUS texture {Bond_C} } 
cylinder { <1.160, 2.183, 2.905>, <1.154, 2.348, 3.332>, BOND_RADIUS texture {Bond_H} } 
cylinder { <1.000, 1.938, 2.478>, <0.858, 2.358, 2.161>, BOND_RADIUS texture {Bond_C} } 
cylinder { <0.858, 2.358, 2.161>, <0.839, 2.641, 1.844>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.984, 1.812, 1.950>, <1.940, 1.863, 2.214>, BOND_RADIUS texture {Bond_H} } 
cylinder { <1.940, 1.863, 2.214>, <1.000, 1.938, 2.478>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.109, 0.733, 1.252>, <1.435, 1.218, 1.865>, BOND_RADIUS texture {Bond_H} } 
cylinder { <1.435, 1.218, 1.865>, <1.000, 1.938, 2.478>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.265, 1.190, 2.081>, <1.000, 1.938, 2.478>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.099, 0.393, 3.205>, <0.521, 1.015, 2.842>, BOND_RADIUS texture {Bond_H} } 
cylinder { <0.521, 1.015, 2.842>, <1.000, 1.938, 2.478>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.979, 1.626, 2.868>, <0.048, 1.752, 2.673>, BOND_RADIUS texture {Bond_H} } 
cylinder { <0.048, 1.752, 2.673>, <1.000, 1.938, 2.478>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.246, 1.088, 2.559>, <1.000, 1.938, 2.478>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.265, 1.190, 2.081>, <2.612, 1.562, 2.016>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.612, 1.562, 2.016>, <2.984, 1.812, 1.950>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.265, 1.190, 2.081>, <2.106, 0.917, 1.667>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.106, 0.917, 1.667>, <2.109, 0.733, 1.252>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-0.246, 1.088, 2.559>, <-0.110, 0.673, 2.882>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.110, 0.673, 2.882>, <-0.099, 0.393, 3.205>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-0.246, 1.088, 2.559>, <-0.583, 1.410, 2.714>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.583, 1.410, 2.714>, <-0.979, 1.626, 2.868>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-1.081, -1.092, -0.348>, <-1.405, -1.497, -0.292>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-1.405, -1.497, -0.292>, <-1.750, -1.771, -0.236>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-1.081, -1.092, -0.348>, <-0.843, -1.249, -0.694>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.843, -1.249, -0.694>, <-0.470, -1.355, -1.041>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-0.360, -0.824, 0.942>, <-1.081, -1.092, -0.348>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-3.021, -0.504, -2.309>, <-2.778, -1.000, -2.288>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-2.778, -1.000, -2.288>, <-2.542, -1.335, -2.267>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-4.100, -0.358, -3.240>, <-3.021, -0.504, -2.309>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.768, -0.587, -4.671>, <-6.146, -0.812, -4.978>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.146, -0.812, -4.978>, <-6.403, -0.964, -5.285>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-4.482, -2.193, -4.125>, <-5.072, -1.546, -4.398>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-5.072, -1.546, -4.398>, <-5.768, -0.587, -4.671>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.717, -1.268, -4.028>, <-5.768, -0.587, -4.671>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.737, 0.701, -4.286>, <-5.768, -0.587, -4.671>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.717, -1.268, -4.028>, <-4.609, -1.820, -4.076>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.609, -1.820, -4.076>, <-4.482, -2.193, -4.125>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-4.100, -0.358, -3.240>, <-4.717, -1.268, -4.028>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.487, 1.888, -4.648>, <-5.737, 0.701, -4.286>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-8.341, 2.915, -5.782>, <-8.792, 2.871, -6.044>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-8.792, 2.871, -6.044>, <-9.141, 2.840, -6.307>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-7.962, 0.918, -5.655>, <-8.139, 1.722, -5.718>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-8.139, 1.722, -5.718>, <-8.341, 2.915, -5.782>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.647, 1.789, -5.405>, <-8.341, 2.915, -5.782>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.881, 4.153, -5.428>, <-8.341, 2.915, -5.782>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.647, 1.789, -5.405>, <-7.829, 1.269, -5.530>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.829, 1.269, -5.530>, <-7.962, 0.918, -5.655>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-6.487, 1.888, -4.648>, <-7.647, 1.789, -5.405>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.258, 3.233, -3.759>, <-5.786, 2.692, -4.203>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-5.786, 2.692, -4.203>, <-6.487, 1.888, -4.648>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.052, 3.152, -4.293>, <-6.487, 1.888, -4.648>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.052, 3.152, -4.293>, <-5.603, 3.201, -4.026>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.603, 3.201, -4.026>, <-5.258, 3.233, -3.759>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-6.425, 5.166, -4.452>, <-6.254, 4.356, -4.372>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-6.254, 4.356, -4.372>, <-6.052, 3.152, -4.293>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.737, 4.289, -4.688>, <-6.052, 3.152, -4.293>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.737, 4.289, -4.688>, <-6.558, 4.813, -4.570>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.558, 4.813, -4.570>, <-6.425, 5.166, -4.452>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-7.881, 4.153, -5.428>, <-6.737, 4.289, -4.688>, BOND_RADIUS texture {Bond_C} } 
}

#declare az2 = object {
	object { az2_obj } }
 
object { az2 } 
