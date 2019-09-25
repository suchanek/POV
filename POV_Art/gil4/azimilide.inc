//
// PDB2POV (UNIX) atom input prepared by pdb2pov 08/29/96 13:42:30
// Author: Eric G. Suchanek, Ph.D.
// Mac port: Richard G. Rothwell, Ph.D.
//	Atoms:   64
//	Extent:	Xmin: -11.641 Xmax: 10.225,
//		Ymin: -7.226, Ymax: 8.082
//		Zmin: -8.807 Zmax: 7.253
//	Enclosing Sphere: 14.731

#include "bonds.inc"
#include "atoms2.inc"

#declare BOND_RADIUS = 0.20
#declare ATM_SCL = .8

#declare azimilide_obj = union {
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.881, 4.153, -5.428> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.737, 4.289, -4.688> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.425, 5.166, -4.452> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.052, 3.152, -4.293> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-5.258, 3.233, -3.759> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.487, 1.888, -4.648> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.647, 1.789, -5.405> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-7.962, 0.918, -5.655> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.341, 2.915, -5.782> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-9.141, 2.840, -6.307> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-5.737, 0.701, -4.286> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.100, -0.358, -3.240> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.717, -1.268, -4.028> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.482, -2.193, -4.125> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-5.768, -0.587, -4.671> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-6.403, -0.964, -5.285> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-3.021, -0.504, -2.309> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.542, -1.335, -2.267> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.410, 1.123, 0.340> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.360, -0.824, 0.942> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.081, -1.092, -0.348> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.470, -1.355, -1.041> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.750, -1.771, -0.236> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.246, 1.088, 2.559> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.979, 1.626, 2.868> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.099, 0.393, 3.205> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.265, 1.190, 2.081> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.109, 0.733, 1.252> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.984, 1.812, 1.950> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.000, 1.938, 2.478> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.839, 2.641, 1.844> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <1.154, 2.348, 3.332> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.687, 0.190, 3.151> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.738, 0.627, 4.004> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <2.022, -0.500, 3.204> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.921, -1.369, 1.648> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.583, -0.905, 0.879> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.309, -2.078, 1.864> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.270, -1.969, 1.353> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.214, -2.558, 0.597> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.885, -1.262, 1.141> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.891, -1.768, 3.693> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <6.502, -1.065, 3.459> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <6.239, -2.224, 4.463> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.552, -1.167, 4.008> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.943, -1.870, 4.246> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.625, -0.566, 4.753> }
object {Atom_C scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.051, -3.429, 2.300> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.314, -3.894, 3.097> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <7.725, -2.786, 2.068> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <6.947, -4.057, 1.582> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.780, -2.711, 2.548> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <5.027, -3.398, 2.798> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.003, -0.437, 2.814> }
object {Atom_H scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <4.620, 0.330, 2.549> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-2.687, 0.456, -1.532> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.687, 0.198, -0.628> }
object {Atom_N scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-0.610, 0.479, 1.283> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <0.307, -1.606, 1.573> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-4.701, 0.873, -3.389> }
object {Atom_O scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-1.778, 2.272, 0.407> }
object {Atom_Cl scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <3.704, -4.726, 3.338> }
object {Atom_Cl scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <6.092, 1.625, 2.043> }
object {Atom_Cl scale <ATM_SCL, ATM_SCL, ATM_SCL> translate <-8.732, 5.582, -5.934> }
cylinder { <-7.88, 4.15, -5.43>, <-8.73, 5.58, -5.93>, BOND_RADIUS texture {White_Bond} }
cylinder { <-1.41, 1.12, 0.34>, <-1.78, 2.27, 0.41>, BOND_RADIUS texture {White_Bond} }
cylinder { <-4.10, -0.36, -3.24>, <-4.70, 0.87, -3.39>, BOND_RADIUS texture {White_Bond} }
cylinder { <-5.74, 0.70, -4.29>, <-4.70, 0.87, -3.39>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.36, -0.82, 0.94>, <0.31, -1.61, 1.57>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.25, 1.09, 2.56>, <-0.61, 0.48, 1.28>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.36, -0.82, 0.94>, <-0.61, 0.48, 1.28>, BOND_RADIUS texture {White_Bond} }
cylinder { <-1.41, 1.12, 0.34>, <-0.61, 0.48, 1.28>, BOND_RADIUS texture {White_Bond} }
cylinder { <-2.69, 0.46, -1.53>, <-1.69, 0.20, -0.63>, BOND_RADIUS texture {White_Bond} }
cylinder { <-1.08, -1.09, -0.35>, <-1.69, 0.20, -0.63>, BOND_RADIUS texture {White_Bond} }
cylinder { <-1.41, 1.12, 0.34>, <-1.69, 0.20, -0.63>, BOND_RADIUS texture {White_Bond} }
cylinder { <-3.02, -0.50, -2.31>, <-2.69, 0.46, -1.53>, BOND_RADIUS texture {White_Bond} }
cylinder { <4.00, -0.44, 2.81>, <4.62, 0.33, 2.55>, BOND_RADIUS texture {White_Bond} }
cylinder { <4.55, -1.17, 4.01>, <4.00, -0.44, 2.81>, BOND_RADIUS texture {White_Bond} }
cylinder { <3.92, -1.37, 1.65>, <4.00, -0.44, 2.81>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.69, 0.19, 3.15>, <4.00, -0.44, 2.81>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.78, -2.71, 2.55>, <5.03, -3.40, 2.80>, BOND_RADIUS texture {White_Bond} }
cylinder { <7.05, -3.43, 2.30>, <5.78, -2.71, 2.55>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.89, -1.77, 3.69>, <5.78, -2.71, 2.55>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.27, -1.97, 1.35>, <5.78, -2.71, 2.55>, BOND_RADIUS texture {White_Bond} }
cylinder { <7.05, -3.43, 2.30>, <6.95, -4.06, 1.58>, BOND_RADIUS texture {White_Bond} }
cylinder { <7.05, -3.43, 2.30>, <7.72, -2.79, 2.07>, BOND_RADIUS texture {White_Bond} }
cylinder { <7.05, -3.43, 2.30>, <7.31, -3.89, 3.10>, BOND_RADIUS texture {White_Bond} }
cylinder { <4.55, -1.17, 4.01>, <4.62, -0.57, 4.75>, BOND_RADIUS texture {White_Bond} }
cylinder { <4.55, -1.17, 4.01>, <3.94, -1.87, 4.25>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.89, -1.77, 3.69>, <4.55, -1.17, 4.01>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.89, -1.77, 3.69>, <6.24, -2.22, 4.46>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.89, -1.77, 3.69>, <6.50, -1.06, 3.46>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.27, -1.97, 1.35>, <5.88, -1.26, 1.14>, BOND_RADIUS texture {White_Bond} }
cylinder { <5.27, -1.97, 1.35>, <5.21, -2.56, 0.60>, BOND_RADIUS texture {White_Bond} }
cylinder { <3.92, -1.37, 1.65>, <5.27, -1.97, 1.35>, BOND_RADIUS texture {White_Bond} }
cylinder { <3.92, -1.37, 1.65>, <3.31, -2.08, 1.86>, BOND_RADIUS texture {White_Bond} }
cylinder { <3.92, -1.37, 1.65>, <3.58, -0.90, 0.88>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.69, 0.19, 3.15>, <2.02, -0.50, 3.20>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.69, 0.19, 3.15>, <2.74, 0.63, 4.00>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.26, 1.19, 2.08>, <2.69, 0.19, 3.15>, BOND_RADIUS texture {White_Bond} }
cylinder { <1.00, 1.94, 2.48>, <1.15, 2.35, 3.33>, BOND_RADIUS texture {White_Bond} }
cylinder { <1.00, 1.94, 2.48>, <0.84, 2.64, 1.84>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.26, 1.19, 2.08>, <1.00, 1.94, 2.48>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.25, 1.09, 2.56>, <1.00, 1.94, 2.48>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.26, 1.19, 2.08>, <2.98, 1.81, 1.95>, BOND_RADIUS texture {White_Bond} }
cylinder { <2.26, 1.19, 2.08>, <2.11, 0.73, 1.25>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.25, 1.09, 2.56>, <-0.10, 0.39, 3.21>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.25, 1.09, 2.56>, <-0.98, 1.63, 2.87>, BOND_RADIUS texture {White_Bond} }
cylinder { <-1.08, -1.09, -0.35>, <-1.75, -1.77, -0.24>, BOND_RADIUS texture {White_Bond} }
cylinder { <-1.08, -1.09, -0.35>, <-0.47, -1.35, -1.04>, BOND_RADIUS texture {White_Bond} }
cylinder { <-0.36, -0.82, 0.94>, <-1.08, -1.09, -0.35>, BOND_RADIUS texture {White_Bond} }
cylinder { <-3.02, -0.50, -2.31>, <-2.54, -1.33, -2.27>, BOND_RADIUS texture {White_Bond} }
cylinder { <-4.10, -0.36, -3.24>, <-3.02, -0.50, -2.31>, BOND_RADIUS texture {White_Bond} }
cylinder { <-5.77, -0.59, -4.67>, <-6.40, -0.96, -5.28>, BOND_RADIUS texture {White_Bond} }
cylinder { <-4.72, -1.27, -4.03>, <-5.77, -0.59, -4.67>, BOND_RADIUS texture {White_Bond} }
cylinder { <-5.74, 0.70, -4.29>, <-5.77, -0.59, -4.67>, BOND_RADIUS texture {White_Bond} }
cylinder { <-4.72, -1.27, -4.03>, <-4.48, -2.19, -4.12>, BOND_RADIUS texture {White_Bond} }
cylinder { <-4.10, -0.36, -3.24>, <-4.72, -1.27, -4.03>, BOND_RADIUS texture {White_Bond} }
cylinder { <-6.49, 1.89, -4.65>, <-5.74, 0.70, -4.29>, BOND_RADIUS texture {White_Bond} }
cylinder { <-8.34, 2.92, -5.78>, <-9.14, 2.84, -6.31>, BOND_RADIUS texture {White_Bond} }
cylinder { <-7.65, 1.79, -5.40>, <-8.34, 2.92, -5.78>, BOND_RADIUS texture {White_Bond} }
cylinder { <-7.88, 4.15, -5.43>, <-8.34, 2.92, -5.78>, BOND_RADIUS texture {White_Bond} }
cylinder { <-7.65, 1.79, -5.40>, <-7.96, 0.92, -5.65>, BOND_RADIUS texture {White_Bond} }
cylinder { <-6.49, 1.89, -4.65>, <-7.65, 1.79, -5.40>, BOND_RADIUS texture {White_Bond} }
cylinder { <-6.05, 3.15, -4.29>, <-6.49, 1.89, -4.65>, BOND_RADIUS texture {White_Bond} }
cylinder { <-6.05, 3.15, -4.29>, <-5.26, 3.23, -3.76>, BOND_RADIUS texture {White_Bond} }
cylinder { <-6.74, 4.29, -4.69>, <-6.05, 3.15, -4.29>, BOND_RADIUS texture {White_Bond} }
cylinder { <-6.74, 4.29, -4.69>, <-6.43, 5.17, -4.45>, BOND_RADIUS texture {White_Bond} }
cylinder { <-7.88, 4.15, -5.43>, <-6.74, 4.29, -4.69>, BOND_RADIUS texture {White_Bond} }
}

#declare azimilide = object {
	object { azimilide_obj }
	rotate <0, 0, -45>
     }


