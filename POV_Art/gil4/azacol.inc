//
// PDB2POV (UNIX) atom input prepared by pdb2pov 06/11/97 09:34:46
//
// PDB2POV (DOS) atom input prepared by pdb2pov 06/11/97 09:34:46
// Author: Eric G. Suchanek, Ph.D. 
// Mac port: Richard G. Rothwell, Ph.D. 
//	Atoms:   18 
//	Extent:	Xmin: -5.157 Xmax: 4.527, 
//		Ymin: -3.138, Ymax: 3.138
//		Zmin: -5.536 Zmax: 6.336 
//	Enclosing Sphere: 6.550

#version 3.0
global_settings {
   max_trace_level 10 
   assumed_gamma 1.8 } 

#declare ATM_SCL = 1.00 
 
#declare azacol_obj = union {
object {Atom_O scale ATM_SCL * .8 translate <-1.919, 0.000, 1.837> }
object {Atom_C scale ATM_SCL * .8 translate <-1.119, 0.000, 0.734> }
object {Atom_C scale ATM_SCL * .8 translate <0.515, 0.000, -1.552> }
object {Atom_C scale ATM_SCL * .8 translate <-1.667, 0.000, -0.540> }
object {Atom_C scale ATM_SCL * .8 translate <0.267, 0.000, 0.860> }
object {Atom_C scale ATM_SCL * .8 translate <1.054, 0.000, -0.285> }
object {Atom_C scale ATM_SCL * .8 translate <-0.868, 0.000, -1.661> }
object {Atom_H scale ATM_SCL translate <-2.736, 0.000, -0.650> }
object {Atom_C scale ATM_SCL * .8 translate <1.018, 0.000, 2.130> }
object {Atom_H scale ATM_SCL translate <2.116, 0.000, -0.169> }
object {Atom_H scale ATM_SCL translate <-1.321, 0.000, -2.633> }
object {Atom_N scale ATM_SCL translate <1.385, 0.000, -2.688> }
object {Atom_H scale ATM_SCL translate <-2.858, 0.000, 1.614> }
object {Atom_O scale ATM_SCL translate <2.228, 0.000, 2.188> }
object {Atom_O scale ATM_SCL translate <0.272, 0.000, 3.248> }
object {Atom_H scale ATM_SCL translate <0.835, 0.000, 4.036> }
object {Atom_H scale ATM_SCL translate <1.399, 0.838, -3.236> }
object {Atom_H scale ATM_SCL translate <1.399, -0.838, -3.236> }
}

#declare azacol = object {
	object { azacol_obj }
	rotate <90,0,0> }
 