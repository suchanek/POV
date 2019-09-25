From: suchanek@pg.com
Sent: Friday, March 31, 2000 3:14 PM
To: suchanek@fuse.net

//
// PDB2POV (UNIX) atom input prepared by pdb2pov 03/31/100 15:12:25
//
// PDB2POV (DOS) atom input prepared by pdb2pov 03/31/100 15:12:25
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
   assumed_gamma 1.8 } 

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
 
#declare risedronate_bs_obj = union {
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
cylinder { <-2.915, 1.217, -0.328>, <-3.390, 2.009, -0.790>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.167, 1.501, -1.098>, <0.242, 1.547, -1.322>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.193, -2.492, -0.415>, <2.112, -2.384, -0.173>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.510, 1.174, 1.266>, <3.681, 1.982, 0.800>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.551, 0.388, 0.973>, <0.859, -0.427, 1.646>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.551, 0.388, 0.973>, <0.764, 1.344, 1.473>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.362, 0.294, -0.339>, <1.167, 1.501, -1.098>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.808, -1.206, -1.280>, <1.193, -2.492, -0.415>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.132, 0.097, 0.152>, <3.302, -1.267, 0.730>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.132, 0.097, 0.152>, <3.510, 1.174, 1.266>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.808, -1.206, -1.280>, <1.445, -1.318, -2.621>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.808, -1.206, -1.280>, <-0.667, -1.217, -1.497>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <3.132, 0.097, 0.152>, <4.091, 0.319, -0.966>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.362, 0.294, -0.339>, <0.808, -1.206, -1.280>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <1.362, 0.294, -0.339>, <3.132, 0.097, 0.152>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <0.551, 0.388, 0.973>, <1.362, 0.294, -0.339>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-1.600, 1.320, -0.010>, <-1.051, 2.218, -0.275>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.607, 0.078, -0.078>, <-4.640, -0.012, -0.403>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.000, -0.983, 0.598>, <-3.561, -1.886, 0.821>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-1.662, -0.876, 0.979>, <-1.184, -1.695, 1.509>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-0.942, 0.277, 0.650>, <0.551, 0.388, 0.973>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-2.915, 1.217, -0.328>, <-1.600, 1.320, -0.010>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-0.942, 0.277, 0.650>, <-1.600, 1.320, -0.010>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.607, 0.078, -0.078>, <-2.915, 1.217, -0.328>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-3.000, -0.983, 0.598>, <-3.607, 0.078, -0.078>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-1.662, -0.876, 0.979>, <-3.000, -0.983, 0.598>, BOND_RADIUS texture {Bond_Plain} } 
cylinder { <-0.942, 0.277, 0.650>, <-1.662, -0.876, 0.979>, BOND_RADIUS texture {Bond_Plain} } 
}

#declare risedronate_bs = object {
	object { risedronate_bs_obj } }
 
object { risedronate_bs } 
Eric G. Suchanek - AKA: suchanek@pg.com, suchanek@fuse.net
                 - http://www.suchanek.org/
		 - A closed mouth gathers no feet. - Mark Twain




  
