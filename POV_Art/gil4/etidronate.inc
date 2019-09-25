//
// PDB2POV (UNIX) atom input prepared by pdb2pov 06/11/97 09:36:50
//
// PDB2POV (DOS) atom input prepared by pdb2pov 06/11/97 09:36:50
// Author: Eric G. Suchanek, Ph.D. 
// Mac port: Richard G. Rothwell, Ph.D. 
//	Atoms:   17 
//	Extent:	Xmin: -4.925 Xmax: 5.058, 
//		Ymin: -5.251, Ymax: 4.491
//		Zmin: -4.241 Zmax: 4.333 
//	Enclosing Sphere: 5.715

#version 3.0
global_settings {
   max_trace_level 10 
   assumed_gamma 1.8 } 

#declare ATM_SCL = 1.00 
 
#declare etidronate_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-0.036, -2.951, -0.470> }
object {Atom_P scale ATM_SCL translate <-1.419, 0.217, -0.718> }
object {Atom_P scale ATM_SCL translate <1.649, -0.079, -0.605> }
object {Atom_O scale ATM_SCL translate <-1.463, -1.214, -1.395> }
object {Atom_O scale ATM_SCL translate <-1.214, 1.258, -1.791> }
object {Atom_O scale ATM_SCL translate <-2.625, 0.408, 0.150> }
object {Atom_O scale ATM_SCL translate <2.758, -0.191, 0.509> }
object {Atom_O scale ATM_SCL translate <1.560, -1.344, -1.414> }
object {Atom_O scale ATM_SCL translate <1.934, 1.175, -1.399> }
object {Atom_O scale ATM_SCL translate <-0.083, -1.086, 1.119> }
object {Atom_C scale ATM_SCL * .8 translate <0.084, 0.120, 0.341> }
object {Atom_C scale ATM_SCL * .8 translate <0.140, 1.372, 1.236> }
object {Atom_H scale ATM_SCL translate <0.947, 1.294, 1.816> }
object {Atom_H scale ATM_SCL translate <-0.636, 1.314, 1.802> }
object {Atom_H scale ATM_SCL translate <0.228, 2.191, 0.720> }
object {Atom_H scale ATM_SCL translate <-2.238, -1.461, -1.941> }
object {Atom_H scale ATM_SCL translate <0.408, -1.016, 2.033> }
}

#declare etidronate = object {
	object { etidronate_obj } }
 