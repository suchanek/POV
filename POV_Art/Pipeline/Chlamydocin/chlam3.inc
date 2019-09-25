//
// PDB2POV (DOS) atom input prepared by pdb2pov 03/07/97 19:53:00
// Author: Eric G. Suchanek, Ph.D.
// Mac port: Richard G. Rothwell, Ph.D.
//	Atoms:   78
//	Extent:	Xmin: -10.846 Xmax: 12.141,
//		Ymin: -6.015, Ymax: 7.209
//		Zmin: -5.164 Zmax: 5.763
//	Enclosing Sphere: 12.519

#version 3.0
global_settings {
   max_trace_level 10
   assumed_gamma 1.8 }

#declare BOND_RADIUS = 0.20
#declare ATM_SCL = 1

#declare chlam3_obj = union {
object {Atom_N scale ATM_SCL * .8 translate <-1.256, -1.669, 1.606> }
object {Atom_C scale ATM_SCL * .8 translate <-2.713, -1.989, 1.622> }
object {Atom_C scale ATM_SCL * .8 translate <-3.048, -3.210, 0.758> }
object {Atom_C scale ATM_SCL * .8 translate <-3.103, -2.259, 3.054> }
object {Atom_C scale ATM_SCL * .8 translate <-3.461, -0.722, 1.128> }
object {Atom_O scale ATM_SCL * .8 translate <-4.192, -0.098, 1.851> }
object {Atom_N scale ATM_SCL * .8 translate <-3.191, -0.357, -0.161> }
object {Atom_C scale ATM_SCL * .8 translate <-3.466, 0.975, -0.716> }
object {Atom_C scale ATM_SCL * .8 translate <-4.167, 0.910, -2.050> }
object {Atom_C scale ATM_SCL * .8 translate <-5.534, 0.253, -1.979> }
object {Atom_C scale ATM_SCL * .8 translate <-6.664, 1.008, -1.694> }
object {Atom_C scale ATM_SCL * .8 translate <-5.678, -1.080, -2.205> }
object {Atom_C scale ATM_SCL * .8 translate <-7.884, 0.397, -1.584> }
object {Atom_C scale ATM_SCL * .8 translate <-6.924, -1.700, -2.136> }
object {Atom_C scale ATM_SCL * .8 translate <-8.008, -0.981, -1.848> }
object {Atom_C scale ATM_SCL * .8 translate <-2.069, 1.619, -0.804> }
object {Atom_O scale ATM_SCL * .8 translate <-1.344, 1.290, -1.760> }
object {Atom_N scale ATM_SCL * .8 translate <-1.644, 2.383, 0.196> }
object {Atom_C scale ATM_SCL * .8 translate <-0.215, 2.766, 0.313> }
object {Atom_C scale ATM_SCL * .8 translate <-0.285, 4.048, 1.143> }
object {Atom_C scale ATM_SCL * .8 translate <-1.493, 3.883, 2.005> }
object {Atom_C scale ATM_SCL * .8 translate <-2.427, 2.957, 1.304> }
object {Atom_C scale ATM_SCL * .8 translate <0.503, 1.617, 0.994> }
object {Atom_O scale ATM_SCL * .8 translate <0.862, 1.679, 2.166> }
object {Atom_N scale ATM_SCL * .8 translate <0.685, 0.510, 0.242> }
object {Atom_C scale ATM_SCL * .8 translate <0.884, -0.828, 0.803> }
object {Atom_C scale ATM_SCL * .8 translate <2.071, -1.565, 0.209> }
object {Atom_C scale ATM_SCL * .8 translate <3.358, -0.765, 0.314> }
object {Atom_C scale ATM_SCL * .8 translate <4.604, -1.532, -0.042> }
object {Atom_C scale ATM_SCL * .8 translate <5.842, -0.614, -0.079> }
object {Atom_C scale ATM_SCL * .8 translate <7.162, -1.358, -0.199> }
object {Atom_C scale ATM_SCL * .8 translate <8.338, -0.366, -0.152> }
object {Atom_O scale ATM_SCL * .8 translate <9.550, -0.963, 0.340> }
object {Atom_C scale ATM_SCL * .8 translate <8.557, 0.232, -1.500> }
object {Atom_C scale ATM_SCL * .8 translate <7.911, 1.506, -1.916> }
object {Atom_O scale ATM_SCL * .8 translate <9.343, 1.440, -1.574> }
object {Atom_C scale ATM_SCL * .8 translate <-0.460, -1.523, 0.550> }
object {Atom_O scale ATM_SCL * .8 translate <-0.789, -1.789, -0.622> }
object {Atom_H scale ATM_SCL translate <-0.928, -1.836, 2.233> }
object {Atom_H scale ATM_SCL translate <-2.905, -2.753, -0.044> }
object {Atom_H scale ATM_SCL translate <-4.026, -3.404, 0.809> }
object {Atom_H scale ATM_SCL translate <-2.785, -3.715, 1.181> }
object {Atom_H scale ATM_SCL translate <-2.986, -1.681, 3.463> }
object {Atom_H scale ATM_SCL translate <-2.663, -2.872, 3.269> }
object {Atom_H scale ATM_SCL translate <-4.088, -2.349, 3.141> }
object {Atom_H scale ATM_SCL translate <-2.731, -0.888, -0.646> }
object {Atom_H scale ATM_SCL translate <-3.956, 1.283, -0.052> }
object {Atom_H scale ATM_SCL translate <-3.564, 0.414, -2.825> }
object {Atom_H scale ATM_SCL translate <-4.323, 1.616, -2.864> }
object {Atom_H scale ATM_SCL translate <-6.425, 2.112, -1.747> }
object {Atom_H scale ATM_SCL translate <-4.749, -1.667, -2.165> }
object {Atom_H scale ATM_SCL translate <-8.484, 0.825, -1.626> }
object {Atom_H scale ATM_SCL translate <-7.040, -2.679, -2.280> }
object {Atom_H scale ATM_SCL translate <-8.546, -1.847, -1.932> }
object {Atom_H scale ATM_SCL translate <0.168, 2.899, -0.523> }
object {Atom_H scale ATM_SCL translate <0.065, 4.909, 0.823> }
object {Atom_H scale ATM_SCL translate <0.514, 4.114, 1.670> }
object {Atom_H scale ATM_SCL translate <-2.170, 4.632, 2.213> }
object {Atom_H scale ATM_SCL translate <-1.181, 3.469, 2.887> }
object {Atom_H scale ATM_SCL translate <-2.835, 2.103, 1.831> }
object {Atom_H scale ATM_SCL translate <-3.419, 3.427, 1.133> }
object {Atom_H scale ATM_SCL translate <0.357, 0.623, -0.599> }
object {Atom_H scale ATM_SCL translate <1.052, -0.727, 1.754> }
object {Atom_H scale ATM_SCL translate <1.882, -1.636, -0.672> }
object {Atom_H scale ATM_SCL translate <2.093, -2.392, 0.580> }
object {Atom_H scale ATM_SCL translate <3.336, -0.056, -0.347> }
object {Atom_H scale ATM_SCL translate <3.358, -0.214, 1.122> }
object {Atom_H scale ATM_SCL translate <4.445, -1.945, -1.071> }
object {Atom_H scale ATM_SCL translate <4.767, -2.218, 0.572> }
object {Atom_H scale ATM_SCL translate <5.813, 0.105, 0.647> }
object {Atom_H scale ATM_SCL translate <5.763, 0.003, -1.018> }
object {Atom_H scale ATM_SCL translate <7.069, -1.976, 0.527> }
object {Atom_H scale ATM_SCL translate <7.136, -1.906, -1.082> }
object {Atom_H scale ATM_SCL translate <8.135, 0.319, 0.519> }
object {Atom_H scale ATM_SCL translate <9.841, -1.601, -0.257> }
object {Atom_H scale ATM_SCL translate <8.730, -0.580, -2.294> }
object {Atom_H scale ATM_SCL translate <8.126, 1.893, -2.770> }
object {Atom_H scale ATM_SCL translate <7.496, 2.091, -1.132> }
cylinder { <7.911, 1.506, -1.916>, <7.780, 1.856, -1.524>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.780, 1.856, -1.524>, <7.496, 2.091, -1.132>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.911, 1.506, -1.916>, <7.935, 1.737, -2.343>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.935, 1.737, -2.343>, <8.126, 1.893, -2.770>, BOND_RADIUS texture {Bond_H} }
cylinder { <8.557, 0.232, -1.500>, <8.566, -0.253, -1.897>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.566, -0.253, -1.897>, <8.730, -0.580, -2.294>, BOND_RADIUS texture {Bond_H} }
cylinder { <9.550, -0.963, 0.340>, <9.678, -1.301, 0.041>, BOND_RADIUS texture {Bond_O} }
cylinder { <9.678, -1.301, 0.041>, <9.841, -1.601, -0.257>, BOND_RADIUS texture {Bond_H} }
cylinder { <8.338, -0.366, -0.152>, <8.302, 0.043, 0.183>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.302, 0.043, 0.183>, <8.135, 0.319, 0.519>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.162, -1.358, -0.199>, <7.063, -1.685, -0.641>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.063, -1.685, -0.641>, <7.136, -1.906, -1.082>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.162, -1.358, -0.199>, <7.186, -1.727, 0.164>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.186, -1.727, 0.164>, <7.069, -1.976, 0.527>, BOND_RADIUS texture {Bond_H} }
cylinder { <5.842, -0.614, -0.079>, <5.711, -0.245, -0.549>, BOND_RADIUS texture {Bond_C} }
cylinder { <5.711, -0.245, -0.549>, <5.763, 0.003, -1.018>, BOND_RADIUS texture {Bond_H} }
cylinder { <5.842, -0.614, -0.079>, <5.898, -0.184, 0.284>, BOND_RADIUS texture {Bond_C} }
cylinder { <5.898, -0.184, 0.284>, <5.813, 0.105, 0.647>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.604, -1.532, -0.042>, <4.745, -1.942, 0.265>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.745, -1.942, 0.265>, <4.767, -2.218, 0.572>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.604, -1.532, -0.042>, <4.424, -1.779, -0.557>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.424, -1.779, -0.557>, <4.445, -1.945, -1.071>, BOND_RADIUS texture {Bond_H} }
cylinder { <3.358, -0.765, 0.314>, <3.437, -0.436, 0.718>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.437, -0.436, 0.718>, <3.358, -0.214, 1.122>, BOND_RADIUS texture {Bond_H} }
cylinder { <3.358, -0.765, 0.314>, <3.283, -0.341, -0.017>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.283, -0.341, -0.017>, <3.336, -0.056, -0.347>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.071, -1.565, 0.209>, <2.118, -2.059, 0.394>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.118, -2.059, 0.394>, <2.093, -2.392, 0.580>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.071, -1.565, 0.209>, <1.891, -1.607, -0.232>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.891, -1.607, -0.232>, <1.882, -1.636, -0.672>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.884, -0.828, 0.803>, <1.061, -0.768, 1.278>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.061, -0.768, 1.278>, <1.052, -0.727, 1.754>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.685, 0.510, 0.242>, <0.478, 0.572, -0.179>, BOND_RADIUS texture {Bond_N} }
cylinder { <0.478, 0.572, -0.179>, <0.357, 0.623, -0.599>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.427, 2.957, 1.304>, <-2.940, 3.238, 1.218>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.940, 3.238, 1.218>, <-3.419, 3.427, 1.133>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.427, 2.957, 1.304>, <-2.580, 2.447, 1.567>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.580, 2.447, 1.567>, <-2.835, 2.103, 1.831>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.493, 3.883, 2.005>, <-1.251, 3.636, 2.446>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.251, 3.636, 2.446>, <-1.181, 3.469, 2.887>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.493, 3.883, 2.005>, <-1.811, 4.331, 2.109>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.811, 4.331, 2.109>, <-2.170, 4.632, 2.213>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.285, 4.048, 1.143>, <0.166, 4.087, 1.406>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.166, 4.087, 1.406>, <0.514, 4.114, 1.670>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.285, 4.048, 1.143>, <-0.141, 4.562, 0.983>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.141, 4.562, 0.983>, <0.065, 4.909, 0.823>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.215, 2.766, 0.313>, <-0.105, 2.845, -0.105>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.105, 2.845, -0.105>, <0.168, 2.899, -0.523>, BOND_RADIUS texture {Bond_H} }
cylinder { <-8.008, -0.981, -1.848>, <-8.285, -1.498, -1.890>, BOND_RADIUS texture {Bond_C} }
cylinder { <-8.285, -1.498, -1.890>, <-8.546, -1.847, -1.932>, BOND_RADIUS texture {Bond_H} }
cylinder { <-6.924, -1.700, -2.136>, <-6.996, -2.285, -2.208>, BOND_RADIUS texture {Bond_C} }
cylinder { <-6.996, -2.285, -2.208>, <-7.040, -2.679, -2.280>, BOND_RADIUS texture {Bond_H} }
cylinder { <-7.884, 0.397, -1.584>, <-8.188, 0.653, -1.605>, BOND_RADIUS texture {Bond_C} }
cylinder { <-8.188, 0.653, -1.605>, <-8.484, 0.825, -1.626>, BOND_RADIUS texture {Bond_H} }
cylinder { <-5.678, -1.080, -2.205>, <-5.210, -1.431, -2.185>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.210, -1.431, -2.185>, <-4.749, -1.667, -2.165>, BOND_RADIUS texture {Bond_H} }
cylinder { <-6.664, 1.008, -1.694>, <-6.550, 1.668, -1.721>, BOND_RADIUS texture {Bond_C} }
cylinder { <-6.550, 1.668, -1.721>, <-6.425, 2.112, -1.747>, BOND_RADIUS texture {Bond_H} }
cylinder { <-4.167, 0.910, -2.050>, <-4.324, 1.332, -2.457>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.324, 1.332, -2.457>, <-4.323, 1.616, -2.864>, BOND_RADIUS texture {Bond_H} }
cylinder { <-4.167, 0.910, -2.050>, <-3.941, 0.614, -2.438>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.941, 0.614, -2.438>, <-3.564, 0.414, -2.825>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.466, 0.975, -0.716>, <-3.646, 1.159, -0.384>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.646, 1.159, -0.384>, <-3.956, 1.283, -0.052>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.191, -0.357, -0.161>, <-2.986, -0.650, -0.404>, BOND_RADIUS texture {Bond_N} }
cylinder { <-2.986, -0.650, -0.404>, <-2.731, -0.888, -0.646>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.103, -2.259, 3.054>, <-3.587, -2.313, 3.097>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.587, -2.313, 3.097>, <-4.088, -2.349, 3.141>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.103, -2.259, 3.054>, <-2.862, -2.625, 3.161>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.862, -2.625, 3.161>, <-2.663, -2.872, 3.269>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.103, -2.259, 3.054>, <-3.005, -1.914, 3.258>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.005, -1.914, 3.258>, <-2.986, -1.681, 3.463>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.048, -3.210, 0.758>, <-2.875, -3.512, 0.969>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.875, -3.512, 0.969>, <-2.785, -3.715, 1.181>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.048, -3.210, 0.758>, <-3.532, -3.326, 0.783>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.532, -3.326, 0.783>, <-4.026, -3.404, 0.809>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.048, -3.210, 0.758>, <-3.055, -2.937, 0.357>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.055, -2.937, 0.357>, <-2.905, -2.753, -0.044>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.256, -1.669, 1.606>, <-1.060, -1.761, 1.919>, BOND_RADIUS texture {Bond_N} }
cylinder { <-1.060, -1.761, 1.919>, <-0.928, -1.836, 2.233>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.460, -1.523, 0.550>, <-0.704, -1.674, -0.036>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.704, -1.674, -0.036>, <-0.789, -1.789, -0.622>, BOND_RADIUS texture {Bond_O} }
cylinder { <0.884, -0.828, 0.803>, <-0.460, -1.523, 0.550>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.256, -1.669, 1.606>, <-0.809, -1.603, 1.078>, BOND_RADIUS texture {Bond_N} }
cylinder { <-0.809, -1.603, 1.078>, <-0.460, -1.523, 0.550>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.911, 1.506, -1.916>, <8.650, 1.469, -1.745>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.650, 1.469, -1.745>, <9.343, 1.440, -1.574>, BOND_RADIUS texture {Bond_O} }
cylinder { <8.557, 0.232, -1.500>, <8.945, 0.918, -1.537>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.945, 0.918, -1.537>, <9.343, 1.440, -1.574>, BOND_RADIUS texture {Bond_O} }
cylinder { <8.557, 0.232, -1.500>, <7.911, 1.506, -1.916>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.338, -0.366, -0.152>, <8.557, 0.232, -1.500>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.338, -0.366, -0.152>, <8.977, -0.705, 0.094>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.977, -0.705, 0.094>, <9.550, -0.963, 0.340>, BOND_RADIUS texture {Bond_O} }
cylinder { <7.162, -1.358, -0.199>, <8.338, -0.366, -0.152>, BOND_RADIUS texture {Bond_C} }
cylinder { <5.842, -0.614, -0.079>, <7.162, -1.358, -0.199>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.604, -1.532, -0.042>, <5.842, -0.614, -0.079>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.358, -0.765, 0.314>, <4.604, -1.532, -0.042>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.071, -1.565, 0.209>, <3.358, -0.765, 0.314>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.884, -0.828, 0.803>, <2.071, -1.565, 0.209>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.685, 0.510, 0.242>, <0.758, -0.097, 0.522>, BOND_RADIUS texture {Bond_N} }
cylinder { <0.758, -0.097, 0.522>, <0.884, -0.828, 0.803>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.503, 1.617, 0.994>, <0.559, 1.012, 0.618>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.559, 1.012, 0.618>, <0.685, 0.510, 0.242>, BOND_RADIUS texture {Bond_N} }
cylinder { <0.503, 1.617, 0.994>, <0.762, 1.652, 1.580>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.762, 1.652, 1.580>, <0.862, 1.679, 2.166>, BOND_RADIUS texture {Bond_O} }
cylinder { <-0.215, 2.766, 0.313>, <0.503, 1.617, 0.994>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.493, 3.883, 2.005>, <-2.427, 2.957, 1.304>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.644, 2.383, 0.196>, <-2.087, 2.643, 0.750>, BOND_RADIUS texture {Bond_N} }
cylinder { <-2.087, 2.643, 0.750>, <-2.427, 2.957, 1.304>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.285, 4.048, 1.143>, <-1.493, 3.883, 2.005>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.215, 2.766, 0.313>, <-0.285, 4.048, 1.143>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.644, 2.383, 0.196>, <-0.935, 2.557, 0.254>, BOND_RADIUS texture {Bond_N} }
cylinder { <-0.935, 2.557, 0.254>, <-0.215, 2.766, 0.313>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.069, 1.619, -0.804>, <-1.810, 2.037, -0.304>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.810, 2.037, -0.304>, <-1.644, 2.383, 0.196>, BOND_RADIUS texture {Bond_N} }
cylinder { <-2.069, 1.619, -0.804>, <-1.771, 1.432, -1.282>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.771, 1.432, -1.282>, <-1.344, 1.290, -1.760>, BOND_RADIUS texture {Bond_O} }
cylinder { <-3.466, 0.975, -0.716>, <-2.069, 1.619, -0.804>, BOND_RADIUS texture {Bond_C} }
cylinder { <-6.924, -1.700, -2.136>, <-8.008, -0.981, -1.848>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.884, 0.397, -1.584>, <-8.008, -0.981, -1.848>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.678, -1.080, -2.205>, <-6.924, -1.700, -2.136>, BOND_RADIUS texture {Bond_C} }
cylinder { <-6.664, 1.008, -1.694>, <-7.884, 0.397, -1.584>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.534, 0.253, -1.979>, <-5.678, -1.080, -2.205>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.534, 0.253, -1.979>, <-6.664, 1.008, -1.694>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.167, 0.910, -2.050>, <-5.534, 0.253, -1.979>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.466, 0.975, -0.716>, <-4.167, 0.910, -2.050>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.191, -0.357, -0.161>, <-3.303, 0.247, -0.439>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.303, 0.247, -0.439>, <-3.466, 0.975, -0.716>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.461, -0.722, 1.128>, <-3.386, -0.523, 0.483>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.386, -0.523, 0.483>, <-3.191, -0.357, -0.161>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.461, -0.722, 1.128>, <-3.778, -0.368, 1.489>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.778, -0.368, 1.489>, <-4.192, -0.098, 1.851>, BOND_RADIUS texture {Bond_O} }
cylinder { <-2.713, -1.989, 1.622>, <-3.461, -0.722, 1.128>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.713, -1.989, 1.622>, <-3.103, -2.259, 3.054>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.713, -1.989, 1.622>, <-3.048, -3.210, 0.758>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.256, -1.669, 1.606>, <-1.985, -1.814, 1.614>, BOND_RADIUS texture {Bond_N} }
cylinder { <-1.985, -1.814, 1.614>, <-2.713, -1.989, 1.622>, BOND_RADIUS texture {Bond_C} }
}

#declare chlam3 = object {
	object { chlam3_obj }
    
}

