//
// PDB2POV (DOS) atom input prepared by pdb2pov 02/24/97 11:37:47
// Author: Eric G. Suchanek, Ph.D.
// Mac port: Richard G. Rothwell, Ph.D.
//	Atoms:   27
//	Extent:	Xmin: -6.940 Xmax: 6.391,
//		Ymin: -4.792, Ymax: 4.518
//		Zmin: -4.921 Zmax: 3.946
//	Enclosing Sphere: 7.097

#version 3.0
global_settings {
   max_trace_level 10
   assumed_gamma 2.2 }

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "skies.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"
camera {
   location < 0, 0, -14.295 >
   direction < 0, 0, 1>
   up <0, 1, 0>
   right <4/3, 0, 0>
   look_at <0, 0, 0>
}
object {
  light_source {
     <6.391, 4.518, -18.314>
     color White
  }
}
/* A plain white sky */
background{White}

#declare BOND_RADIUS = 0.20
#declare ATM_SCL = 0.30

#declare risedronate3_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-0.942, 0.277, 0.650> }
object {Atom_C scale ATM_SCL * .8 translate <-1.662, -0.876, 0.979> }
object {Atom_C scale ATM_SCL * .8 translate <-3.000, -0.983, 0.598> }
object {Atom_C scale ATM_SCL * .8 translate <-3.607, 0.078, -0.078> }
object {Atom_N scale ATM_SCL translate <-2.915, 1.217, -0.328> }
object {Atom_C scale ATM_SCL * .8 translate <-1.600, 1.320, -0.010> }
object {Atom_C scale ATM_SCL * .8 translate <0.551, 0.388, 0.973> }
object {Atom_H scale ATM_SCL translate <-1.184, -1.695, 1.509> }
object {Atom_H scale ATM_SCL translate <-3.561, -1.886, 0.821> }
object {Atom_H scale ATM_SCL translate <-4.640, -0.012, -0.403> }
object {Atom_H scale ATM_SCL translate <-1.051, 2.218, -0.275> }
object {Atom_C scale ATM_SCL * .8 translate <1.362, 0.294, -0.339> }
object {Atom_P scale ATM_SCL translate <3.132, 0.097, 0.152> }
object {Atom_P scale ATM_SCL translate <0.808, -1.206, -1.280> }
object {Atom_O scale ATM_SCL translate <4.091, 0.319, -0.966> }
object {Atom_O scale ATM_SCL translate <-0.667, -1.217, -1.497> }
object {Atom_O scale ATM_SCL translate <1.445, -1.318, -2.621> }
object {Atom_O scale ATM_SCL translate <3.510, 1.174, 1.266> }
object {Atom_O scale ATM_SCL translate <3.302, -1.267, 0.730> }
object {Atom_O scale ATM_SCL translate <1.193, -2.492, -0.415> }
object {Atom_O scale ATM_SCL translate <1.167, 1.501, -1.098> }
object {Atom_H scale ATM_SCL translate <0.764, 1.344, 1.473> }
object {Atom_H scale ATM_SCL translate <0.859, -0.427, 1.646> }
object {Atom_H scale ATM_SCL translate <3.681, 1.982, 0.800> }
object {Atom_H scale ATM_SCL translate <2.112, -2.384, -0.173> }
object {Atom_H scale ATM_SCL translate <0.242, 1.547, -1.322> }
object {Atom_H scale ATM_SCL translate <-3.390, 2.009, -0.790> }
cylinder { <-2.915, 1.217, -0.328>, <-3.176, 1.653, -0.559>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.176, 1.653, -0.559>, <-3.390, 2.009, -0.790>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.167, 1.501, -1.098>, <0.698, 1.525, -1.210>, BOND_RADIUS texture {Bond_O} }
cylinder { <0.698, 1.525, -1.210>, <0.242, 1.547, -1.322>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.193, -2.492, -0.415>, <1.660, -2.435, -0.294>, BOND_RADIUS texture {Bond_O} }
cylinder { <1.660, -2.435, -0.294>, <2.112, -2.384, -0.173>, BOND_RADIUS texture {Bond_H} }
cylinder { <3.510, 1.174, 1.266>, <3.582, 1.602, 1.033>, BOND_RADIUS texture {Bond_O} }
cylinder { <3.582, 1.602, 1.033>, <3.681, 1.982, 0.800>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.551, 0.388, 0.973>, <0.771, -0.099, 1.309>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.771, -0.099, 1.309>, <0.859, -0.427, 1.646>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.551, 0.388, 0.973>, <0.706, 0.959, 1.223>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.706, 0.959, 1.223>, <0.764, 1.344, 1.473>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.362, 0.294, -0.339>, <1.213, 0.979, -0.719>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.213, 0.979, -0.719>, <1.167, 1.501, -1.098>, BOND_RADIUS texture {Bond_O} }
cylinder { <0.808, -1.206, -1.280>, <1.065, -1.946, -0.848>, BOND_RADIUS texture {Bond_P} }
cylinder { <1.065, -1.946, -0.848>, <1.193, -2.492, -0.415>, BOND_RADIUS texture {Bond_O} }
cylinder { <3.132, 0.097, 0.152>, <3.260, -0.687, 0.441>, BOND_RADIUS texture {Bond_P} }
cylinder { <3.260, -0.687, 0.441>, <3.302, -1.267, 0.730>, BOND_RADIUS texture {Bond_O} }
cylinder { <3.132, 0.097, 0.152>, <3.405, 0.716, 0.709>, BOND_RADIUS texture {Bond_P} }
cylinder { <3.405, 0.716, 0.709>, <3.510, 1.174, 1.266>, BOND_RADIUS texture {Bond_O} }
cylinder { <0.808, -1.206, -1.280>, <1.026, -1.270, -1.951>, BOND_RADIUS texture {Bond_P} }
cylinder { <1.026, -1.270, -1.951>, <1.445, -1.318, -2.621>, BOND_RADIUS texture {Bond_O} }
cylinder { <0.808, -1.206, -1.280>, <0.054, -1.212, -1.389>, BOND_RADIUS texture {Bond_P} }
cylinder { <0.054, -1.212, -1.389>, <-0.667, -1.217, -1.497>, BOND_RADIUS texture {Bond_O} }
cylinder { <3.132, 0.097, 0.152>, <3.528, 0.225, -0.407>, BOND_RADIUS texture {Bond_P} }
cylinder { <3.528, 0.225, -0.407>, <4.091, 0.319, -0.966>, BOND_RADIUS texture {Bond_O} }
cylinder { <0.551, 0.388, 0.973>, <1.362, 0.294, -0.339>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.600, 1.320, -0.010>, <-1.351, 1.856, -0.143>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.351, 1.856, -0.143>, <-1.051, 2.218, -0.275>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.607, 0.078, -0.078>, <-4.155, 0.024, -0.241>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.155, 0.024, -0.241>, <-4.640, -0.012, -0.403>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.000, -0.983, 0.598>, <-3.259, -1.523, 0.709>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.259, -1.523, 0.709>, <-3.561, -1.886, 0.821>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.662, -0.876, 0.979>, <-1.371, -1.365, 1.244>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.371, -1.365, 1.244>, <-1.184, -1.695, 1.509>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.942, 0.277, 0.650>, <0.551, 0.388, 0.973>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.915, 1.217, -0.328>, <-2.272, 1.264, -0.169>, BOND_RADIUS texture {Bond_N} }
cylinder { <-2.272, 1.264, -0.169>, <-1.600, 1.320, -0.010>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.942, 0.277, 0.650>, <-1.600, 1.320, -0.010>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.607, 0.078, -0.078>, <-3.273, 0.700, -0.203>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.273, 0.700, -0.203>, <-2.915, 1.217, -0.328>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.000, -0.983, 0.598>, <-3.607, 0.078, -0.078>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.662, -0.876, 0.979>, <-3.000, -0.983, 0.598>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.942, 0.277, 0.650>, <-1.662, -0.876, 0.979>, BOND_RADIUS texture {Bond_C} }
}

#declare risedronate3 = object {
	object { risedronate3_obj } }

object { risedronate3 }
