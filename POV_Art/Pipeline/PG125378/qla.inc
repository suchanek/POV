//
// PDB2POV (DOS) atom input prepared by pdb2pov 02/13/97 13:10:25
// Author: Eric G. Suchanek, Ph.D. 
// Mac port: Richard G. Rothwell, Ph.D. 
//	Atoms:   93 
//	Extent:	Xmin: -16.530 Xmax: 16.528, 
//		Ymin: -7.075, Ymax: 6.562
//		Zmin: -6.421 Zmax: 5.027 
//	Enclosing Sphere: 17.379

#version 3.0
global_settings {
   max_trace_level 10 
   assumed_gamma 1.8 } 

#declare BOND_RADIUS = 0.20 
#declare ATM_SCL = 0.30 
 
#declare qla_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-5.637, -0.351, -1.699> }
object {Atom_C scale ATM_SCL * .8 translate <-4.215, -0.448, -1.092> }
object {Atom_C scale ATM_SCL * .8 translate <-4.159, -1.440, 0.055> }
object {Atom_C scale ATM_SCL * .8 translate <-5.095, -2.402, 0.213> }
object {Atom_N scale ATM_SCL translate <-6.082, -2.472, -0.719> }
object {Atom_C scale ATM_SCL * .8 translate <-5.993, -1.815, -1.998> }
object {Atom_C scale ATM_SCL * .8 translate <-7.481, -2.291, -2.151> }
object {Atom_C scale ATM_SCL * .8 translate <-7.296, -3.004, -0.834> }
object {Atom_C scale ATM_SCL * .8 translate <-3.035, -1.242, 0.994> }
object {Atom_C scale ATM_SCL * .8 translate <-5.112, -3.273, 1.238> }
object {Atom_O scale ATM_SCL translate <-8.024, -3.722, -0.168> }
object {Atom_N scale ATM_SCL translate <-8.455, -1.211, -2.083> }
object {Atom_H scale ATM_SCL translate <-5.647, 0.254, -2.619> }
object {Atom_O scale ATM_SCL translate <-4.251, -3.255, 2.105> }
object {Atom_O scale ATM_SCL translate <-6.077, -4.196, 1.314> }
object {Atom_H scale ATM_SCL translate <-6.014, -4.775, 2.067> }
object {Atom_C scale ATM_SCL * .8 translate <-0.592, -1.112, 1.550> }
object {Atom_H scale ATM_SCL translate <-1.520, -1.544, -0.432> }
object {Atom_H scale ATM_SCL translate <-0.924, -0.765, 2.543> }
object {Atom_C scale ATM_SCL * .8 translate <-8.564, -0.346, -3.115> }
object {Atom_O scale ATM_SCL translate <-7.877, -0.424, -4.121> }
object {Atom_C scale ATM_SCL * .8 translate <-9.580, 0.761, -3.006> }
object {Atom_O scale ATM_SCL translate <-10.311, 0.603, -1.779> }
object {Atom_C scale ATM_SCL * .8 translate <-11.342, 1.478, -1.406> }
object {Atom_C scale ATM_SCL * .8 translate <-12.015, 1.242, -0.203> }
object {Atom_C scale ATM_SCL * .8 translate <-13.052, 2.081, 0.213> }
object {Atom_C scale ATM_SCL * .8 translate <-13.424, 3.171, -0.577> }
object {Atom_C scale ATM_SCL * .8 translate <-12.756, 3.415, -1.780> }
object {Atom_C scale ATM_SCL * .8 translate <-11.718, 2.574, -2.195> }
object {Atom_H scale ATM_SCL translate <-6.342, 0.081, -0.971> }
object {Atom_H scale ATM_SCL translate <-3.500, -0.766, -1.867> }
object {Atom_H scale ATM_SCL translate <-3.913, 0.552, -0.742> }
object {Atom_H scale ATM_SCL translate <-5.301, -2.336, -2.682> }
object {Atom_H scale ATM_SCL translate <-7.654, -2.991, -2.985> }
object {Atom_H scale ATM_SCL translate <-0.089, -2.084, 1.673> }
object {Atom_C scale ATM_SCL * .8 translate <-1.754, -1.317, 0.609> }
object {Atom_H scale ATM_SCL translate <-3.277, -1.019, 2.033> }
object {Atom_H scale ATM_SCL translate <-9.036, -1.125, -1.270> }
object {Atom_H scale ATM_SCL translate <-9.047, 1.724, -3.017> }
object {Atom_H scale ATM_SCL translate <-10.261, 0.694, -3.869> }
object {Atom_H scale ATM_SCL translate <-11.727, 0.395, 0.413> }
object {Atom_H scale ATM_SCL translate <-13.568, 1.887, 1.149> }
object {Atom_H scale ATM_SCL translate <-14.230, 3.826, -0.259> }
object {Atom_H scale ATM_SCL translate <-13.046, 4.262, -2.395> }
object {Atom_H scale ATM_SCL translate <-11.224, 2.797, -3.132> }
object {Atom_C scale ATM_SCL * .8 translate <10.471, 1.895, 1.803> }
object {Atom_C scale ATM_SCL * .8 translate <11.289, 0.739, 1.392> }
object {Atom_C scale ATM_SCL * .8 translate <10.696, -0.267, 0.732> }
object {Atom_C scale ATM_SCL * .8 translate <7.083, 0.536, 0.889> }
object {Atom_C scale ATM_SCL * .8 translate <6.253, 1.648, 1.058> }
object {Atom_C scale ATM_SCL * .8 translate <6.788, 2.853, 1.519> }
object {Atom_C scale ATM_SCL * .8 translate <8.155, 2.949, 1.791> }
object {Atom_C scale ATM_SCL * .8 translate <8.990, 1.864, 1.512> }
object {Atom_C scale ATM_SCL * .8 translate <8.474, 0.695, 0.947> }
object {Atom_N scale ATM_SCL translate <9.369, -0.298, 0.450> }
object {Atom_C scale ATM_SCL * .8 translate <8.873, -1.364, -0.415> }
object {Atom_C scale ATM_SCL * .8 translate <8.059, -0.974, -1.669> }
object {Atom_C scale ATM_SCL * .8 translate <9.535, -1.390, -1.812> }
object {Atom_O scale ATM_SCL translate <10.968, 2.861, 2.360> }
object {Atom_C scale ATM_SCL * .8 translate <12.738, 0.714, 1.698> }
object {Atom_O scale ATM_SCL translate <13.418, -0.237, 1.339> }
object {Atom_O scale ATM_SCL translate <13.294, 1.732, 2.365> }
object {Atom_N scale ATM_SCL translate <4.872, 1.565, 0.764> }
object {Atom_C scale ATM_SCL * .8 translate <3.877, 1.280, 1.816> }
object {Atom_C scale ATM_SCL * .8 translate <2.580, 0.984, 1.027> }
object {Atom_C scale ATM_SCL * .8 translate <3.130, 0.269, -0.226> }
object {Atom_C scale ATM_SCL * .8 translate <4.381, 1.116, -0.555> }
object {Atom_O scale ATM_SCL translate <6.516, -0.720, 0.680> }
object {Atom_C scale ATM_SCL * .8 translate <6.585, -1.582, 1.828> }
object {Atom_C scale ATM_SCL * .8 translate <1.548, 0.136, 1.815> }
object {Atom_F scale ATM_SCL translate <5.994, 3.905, 1.703> }
object {Atom_H scale ATM_SCL translate <11.304, -1.106, 0.393> }
object {Atom_H scale ATM_SCL translate <8.558, 3.864, 2.211> }
object {Atom_H scale ATM_SCL translate <8.745, -2.373, 0.006> }
object {Atom_H scale ATM_SCL translate <7.288, -1.695, -1.983> }
object {Atom_H scale ATM_SCL translate <7.829, 0.095, -1.799> }
object {Atom_H scale ATM_SCL translate <9.704, -2.367, -2.292> }
object {Atom_H scale ATM_SCL translate <10.225, -0.575, -2.081> }
object {Atom_H scale ATM_SCL translate <14.228, 1.628, 2.516> }
object {Atom_H scale ATM_SCL translate <4.196, 0.395, 2.384> }
object {Atom_H scale ATM_SCL translate <3.762, 2.131, 2.506> }
object {Atom_H scale ATM_SCL translate <2.124, 1.941, 0.718> }
object {Atom_H scale ATM_SCL translate <3.445, -0.755, 0.036> }
object {Atom_H scale ATM_SCL translate <2.405, 0.222, -1.055> }
object {Atom_H scale ATM_SCL translate <5.121, 0.547, -1.141> }
object {Atom_H scale ATM_SCL translate <4.097, 2.017, -1.122> }
object {Atom_H scale ATM_SCL translate <6.036, -1.152, 2.679> }
object {Atom_H scale ATM_SCL translate <7.625, -1.763, 2.140> }
object {Atom_H scale ATM_SCL translate <6.123, -2.544, 1.560> }
object {Atom_H scale ATM_SCL translate <2.016, -0.814, 2.117> }
object {Atom_H scale ATM_SCL translate <1.249, 0.680, 2.727> }
object {Atom_N scale ATM_SCL translate <0.364, -0.143, 0.971> }
object {Atom_H scale ATM_SCL translate <-0.144, 0.780, 0.718> }
cylinder { <0.364, -0.143, 0.971>, <0.097, 0.366, 0.844>, BOND_RADIUS texture {Bond_N} } 
cylinder { <0.097, 0.366, 0.844>, <-0.144, 0.780, 0.718>, BOND_RADIUS texture {Bond_H} } 
cylinder { <1.548, 0.136, 1.815>, <0.917, -0.016, 1.393>, BOND_RADIUS texture {Bond_C} } 
cylinder { <0.917, -0.016, 1.393>, <0.364, -0.143, 0.971>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-0.592, -1.112, 1.550>, <-0.141, -0.582, 1.260>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.141, -0.582, 1.260>, <0.364, -0.143, 0.971>, BOND_RADIUS texture {Bond_N} } 
cylinder { <1.548, 0.136, 1.815>, <1.487, 0.461, 2.271>, BOND_RADIUS texture {Bond_C} } 
cylinder { <1.487, 0.461, 2.271>, <1.249, 0.680, 2.727>, BOND_RADIUS texture {Bond_H} } 
cylinder { <1.548, 0.136, 1.815>, <1.811, -0.432, 1.966>, BOND_RADIUS texture {Bond_C} } 
cylinder { <1.811, -0.432, 1.966>, <2.016, -0.814, 2.117>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.585, -1.582, 1.828>, <6.328, -2.157, 1.694>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.328, -2.157, 1.694>, <6.123, -2.544, 1.560>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.585, -1.582, 1.828>, <7.135, -1.690, 1.984>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.135, -1.690, 1.984>, <7.625, -1.763, 2.140>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.585, -1.582, 1.828>, <6.393, -1.325, 2.253>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.393, -1.325, 2.253>, <6.036, -1.152, 2.679>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.381, 1.116, -0.555>, <4.184, 1.654, -0.839>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.184, 1.654, -0.839>, <4.097, 2.017, -1.122>, BOND_RADIUS texture {Bond_H} } 
cylinder { <4.381, 1.116, -0.555>, <4.694, 0.776, -0.848>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.694, 0.776, -0.848>, <5.121, 0.547, -1.141>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.130, 0.269, -0.226>, <2.686, 0.241, -0.641>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.686, 0.241, -0.641>, <2.405, 0.222, -1.055>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.130, 0.269, -0.226>, <3.313, -0.343, -0.095>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.313, -0.343, -0.095>, <3.445, -0.755, 0.036>, BOND_RADIUS texture {Bond_H} } 
cylinder { <2.580, 0.984, 1.027>, <2.322, 1.556, 0.872>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.322, 1.556, 0.872>, <2.124, 1.941, 0.718>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.877, 1.280, 1.816>, <3.887, 1.789, 2.161>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.887, 1.789, 2.161>, <3.762, 2.131, 2.506>, BOND_RADIUS texture {Bond_H} } 
cylinder { <3.877, 1.280, 1.816>, <4.092, 0.751, 2.100>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.092, 0.751, 2.100>, <4.196, 0.395, 2.384>, BOND_RADIUS texture {Bond_H} } 
cylinder { <13.294, 1.732, 2.365>, <13.765, 1.677, 2.440>, BOND_RADIUS texture {Bond_O} } 
cylinder { <13.765, 1.677, 2.440>, <14.228, 1.628, 2.516>, BOND_RADIUS texture {Bond_H} } 
cylinder { <9.535, -1.390, -1.812>, <9.854, -0.903, -1.947>, BOND_RADIUS texture {Bond_C} } 
cylinder { <9.854, -0.903, -1.947>, <10.225, -0.575, -2.081>, BOND_RADIUS texture {Bond_H} } 
cylinder { <9.535, -1.390, -1.812>, <9.572, -1.974, -2.052>, BOND_RADIUS texture {Bond_C} } 
cylinder { <9.572, -1.974, -2.052>, <9.704, -2.367, -2.292>, BOND_RADIUS texture {Bond_H} } 
cylinder { <8.059, -0.974, -1.669>, <7.931, -0.335, -1.734>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.931, -0.335, -1.734>, <7.829, 0.095, -1.799>, BOND_RADIUS texture {Bond_H} } 
cylinder { <8.059, -0.974, -1.669>, <7.643, -1.405, -1.826>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.643, -1.405, -1.826>, <7.288, -1.695, -1.983>, BOND_RADIUS texture {Bond_H} } 
cylinder { <8.873, -1.364, -0.415>, <8.850, -1.967, -0.205>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.850, -1.967, -0.205>, <8.745, -2.373, 0.006>, BOND_RADIUS texture {Bond_H} } 
cylinder { <8.155, 2.949, 1.791>, <8.397, 3.496, 2.001>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.397, 3.496, 2.001>, <8.558, 3.864, 2.211>, BOND_RADIUS texture {Bond_H} } 
cylinder { <10.696, -0.267, 0.732>, <10.967, -0.768, 0.562>, BOND_RADIUS texture {Bond_C} } 
cylinder { <10.967, -0.768, 0.562>, <11.304, -1.106, 0.393>, BOND_RADIUS texture {Bond_H} } 
cylinder { <6.788, 2.853, 1.519>, <6.405, 3.458, 1.611>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.405, 3.458, 1.611>, <5.994, 3.905, 1.703>, BOND_RADIUS texture {Bond_F} } 
cylinder { <2.580, 0.984, 1.027>, <1.548, 0.136, 1.815>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.516, -0.720, 0.680>, <6.473, -1.093, 1.254>, BOND_RADIUS texture {Bond_O} } 
cylinder { <6.473, -1.093, 1.254>, <6.585, -1.582, 1.828>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.083, 0.536, 0.889>, <6.785, -0.177, 0.784>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.785, -0.177, 0.784>, <6.516, -0.720, 0.680>, BOND_RADIUS texture {Bond_O} } 
cylinder { <3.130, 0.269, -0.226>, <4.381, 1.116, -0.555>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.872, 1.565, 0.764>, <4.688, 1.361, 0.104>, BOND_RADIUS texture {Bond_N} } 
cylinder { <4.688, 1.361, 0.104>, <4.381, 1.116, -0.555>, BOND_RADIUS texture {Bond_C} } 
cylinder { <2.580, 0.984, 1.027>, <3.130, 0.269, -0.226>, BOND_RADIUS texture {Bond_C} } 
cylinder { <3.877, 1.280, 1.816>, <2.580, 0.984, 1.027>, BOND_RADIUS texture {Bond_C} } 
cylinder { <4.872, 1.565, 0.764>, <4.325, 1.436, 1.290>, BOND_RADIUS texture {Bond_N} } 
cylinder { <4.325, 1.436, 1.290>, <3.877, 1.280, 1.816>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.253, 1.648, 1.058>, <5.549, 1.603, 0.911>, BOND_RADIUS texture {Bond_C} } 
cylinder { <5.549, 1.603, 0.911>, <4.872, 1.565, 0.764>, BOND_RADIUS texture {Bond_N} } 
cylinder { <12.738, 0.714, 1.698>, <13.061, 1.292, 2.031>, BOND_RADIUS texture {Bond_C} } 
cylinder { <13.061, 1.292, 2.031>, <13.294, 1.732, 2.365>, BOND_RADIUS texture {Bond_O} } 
cylinder { <12.738, 0.714, 1.698>, <13.054, 0.174, 1.518>, BOND_RADIUS texture {Bond_C} } 
cylinder { <13.054, 0.174, 1.518>, <13.418, -0.237, 1.339>, BOND_RADIUS texture {Bond_O} } 
cylinder { <11.289, 0.739, 1.392>, <12.738, 0.714, 1.698>, BOND_RADIUS texture {Bond_C} } 
cylinder { <10.471, 1.895, 1.803>, <10.757, 2.443, 2.081>, BOND_RADIUS texture {Bond_C} } 
cylinder { <10.757, 2.443, 2.081>, <10.968, 2.861, 2.360>, BOND_RADIUS texture {Bond_O} } 
cylinder { <8.059, -0.974, -1.669>, <9.535, -1.390, -1.812>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.873, -1.364, -0.415>, <9.535, -1.390, -1.812>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.873, -1.364, -0.415>, <8.059, -0.974, -1.669>, BOND_RADIUS texture {Bond_C} } 
cylinder { <9.369, -0.298, 0.450>, <9.161, -0.781, 0.017>, BOND_RADIUS texture {Bond_N} } 
cylinder { <9.161, -0.781, 0.017>, <8.873, -1.364, -0.415>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.474, 0.695, 0.947>, <8.898, 0.152, 0.698>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.898, 0.152, 0.698>, <9.369, -0.298, 0.450>, BOND_RADIUS texture {Bond_N} } 
cylinder { <10.696, -0.267, 0.732>, <10.019, -0.284, 0.591>, BOND_RADIUS texture {Bond_C} } 
cylinder { <10.019, -0.284, 0.591>, <9.369, -0.298, 0.450>, BOND_RADIUS texture {Bond_N} } 
cylinder { <8.990, 1.864, 1.512>, <8.474, 0.695, 0.947>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.083, 0.536, 0.889>, <8.474, 0.695, 0.947>, BOND_RADIUS texture {Bond_C} } 
cylinder { <8.155, 2.949, 1.791>, <8.990, 1.864, 1.512>, BOND_RADIUS texture {Bond_C} } 
cylinder { <10.471, 1.895, 1.803>, <8.990, 1.864, 1.512>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.788, 2.853, 1.519>, <8.155, 2.949, 1.791>, BOND_RADIUS texture {Bond_C} } 
cylinder { <6.253, 1.648, 1.058>, <6.788, 2.853, 1.519>, BOND_RADIUS texture {Bond_C} } 
cylinder { <7.083, 0.536, 0.889>, <6.253, 1.648, 1.058>, BOND_RADIUS texture {Bond_C} } 
cylinder { <11.289, 0.739, 1.392>, <10.696, -0.267, 0.732>, BOND_RADIUS texture {Bond_C} } 
cylinder { <10.471, 1.895, 1.803>, <11.289, 0.739, 1.392>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-11.718, 2.574, -2.195>, <-11.563, 2.707, -2.664>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-11.563, 2.707, -2.664>, <-11.224, 2.797, -3.132>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-12.756, 3.415, -1.780>, <-12.961, 3.921, -2.088>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-12.961, 3.921, -2.088>, <-13.046, 4.262, -2.395>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-13.424, 3.171, -0.577>, <-13.796, 3.562, -0.418>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-13.796, 3.562, -0.418>, <-14.230, 3.826, -0.259>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-13.052, 2.081, 0.213>, <-13.219, 1.965, 0.681>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-13.219, 1.965, 0.681>, <-13.568, 1.887, 1.149>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-12.015, 1.242, -0.203>, <-11.811, 0.736, 0.105>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-11.811, 0.736, 0.105>, <-11.727, 0.395, 0.413>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-9.580, 0.761, -3.006>, <-10.005, 0.721, -3.438>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-10.005, 0.721, -3.438>, <-10.261, 0.694, -3.869>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-9.580, 0.761, -3.006>, <-9.315, 1.336, -3.012>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-9.315, 1.336, -3.012>, <-9.047, 1.724, -3.017>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-8.455, -1.211, -2.083>, <-8.704, -1.164, -1.677>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-8.704, -1.164, -1.677>, <-9.036, -1.125, -1.270>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-3.035, -1.242, 0.994>, <-3.055, -1.109, 1.513>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-3.055, -1.109, 1.513>, <-3.277, -1.019, 2.033>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-1.520, -1.544, -0.432>, <-1.739, -1.453, 0.088>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-1.739, -1.453, 0.088>, <-1.754, -1.317, 0.609>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.592, -1.112, 1.550>, <-1.754, -1.317, 0.609>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-3.035, -1.242, 0.994>, <-1.754, -1.317, 0.609>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.592, -1.112, 1.550>, <-0.329, -1.693, 1.611>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.329, -1.693, 1.611>, <-0.089, -2.084, 1.673>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-7.481, -2.291, -2.151>, <-7.649, -2.709, -2.568>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.649, -2.709, -2.568>, <-7.654, -2.991, -2.985>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-5.993, -1.815, -1.998>, <-5.714, -2.126, -2.340>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.714, -2.126, -2.340>, <-5.301, -2.336, -2.682>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-4.215, -0.448, -1.092>, <-4.030, 0.150, -0.917>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.030, 0.150, -0.917>, <-3.913, 0.552, -0.742>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-4.215, -0.448, -1.092>, <-3.933, -0.638, -1.480>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-3.933, -0.638, -1.480>, <-3.500, -0.766, -1.867>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-5.637, -0.351, -1.699>, <-5.919, -0.093, -1.335>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.919, -0.093, -1.335>, <-6.342, 0.081, -0.971>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-12.756, 3.415, -1.780>, <-11.718, 2.574, -2.195>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-11.342, 1.478, -1.406>, <-11.718, 2.574, -2.195>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-13.424, 3.171, -0.577>, <-12.756, 3.415, -1.780>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-13.052, 2.081, 0.213>, <-13.424, 3.171, -0.577>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-12.015, 1.242, -0.203>, <-13.052, 2.081, 0.213>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-11.342, 1.478, -1.406>, <-12.015, 1.242, -0.203>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-10.311, 0.603, -1.779>, <-10.852, 0.982, -1.593>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-10.852, 0.982, -1.593>, <-11.342, 1.478, -1.406>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-9.580, 0.761, -3.006>, <-9.863, 0.671, -2.393>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-9.863, 0.671, -2.393>, <-10.311, 0.603, -1.779>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-8.564, -0.346, -3.115>, <-9.580, 0.761, -3.006>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-8.564, -0.346, -3.115>, <-8.289, -0.390, -3.618>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-8.289, -0.390, -3.618>, <-7.877, -0.424, -4.121>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-8.455, -1.211, -2.083>, <-8.462, -0.819, -2.599>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-8.462, -0.819, -2.599>, <-8.564, -0.346, -3.115>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.592, -1.112, 1.550>, <-0.661, -0.905, 2.046>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-0.661, -0.905, 2.046>, <-0.924, -0.765, 2.543>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-6.077, -4.196, 1.314>, <-6.023, -4.503, 1.690>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-6.023, -4.503, 1.690>, <-6.014, -4.775, 2.067>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-5.112, -3.273, 1.238>, <-5.590, -3.797, 1.276>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.590, -3.797, 1.276>, <-6.077, -4.196, 1.314>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-5.112, -3.273, 1.238>, <-4.623, -3.263, 1.671>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.623, -3.263, 1.671>, <-4.251, -3.255, 2.105>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-5.637, -0.351, -1.699>, <-5.732, 0.011, -2.159>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.732, 0.011, -2.159>, <-5.647, 0.254, -2.619>, BOND_RADIUS texture {Bond_H} } 
cylinder { <-7.481, -2.291, -2.151>, <-7.965, -1.701, -2.117>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.965, -1.701, -2.117>, <-8.455, -1.211, -2.083>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-7.296, -3.004, -0.834>, <-7.615, -3.411, -0.501>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.615, -3.411, -0.501>, <-8.024, -3.722, -0.168>, BOND_RADIUS texture {Bond_O} } 
cylinder { <-5.095, -2.402, 0.213>, <-5.112, -3.273, 1.238>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.159, -1.440, 0.055>, <-3.035, -1.242, 0.994>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-7.481, -2.291, -2.151>, <-7.296, -3.004, -0.834>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.082, -2.472, -0.719>, <-6.684, -2.713, -0.777>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-6.684, -2.713, -0.777>, <-7.296, -3.004, -0.834>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.993, -1.815, -1.998>, <-7.481, -2.291, -2.151>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-6.082, -2.472, -0.719>, <-5.978, -2.174, -1.359>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-5.978, -2.174, -1.359>, <-5.993, -1.815, -1.998>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.637, -0.351, -1.699>, <-5.993, -1.815, -1.998>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.095, -2.402, 0.213>, <-5.632, -2.440, -0.253>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.632, -2.440, -0.253>, <-6.082, -2.472, -0.719>, BOND_RADIUS texture {Bond_N} } 
cylinder { <-4.159, -1.440, 0.055>, <-5.095, -2.402, 0.213>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-4.215, -0.448, -1.092>, <-4.159, -1.440, 0.055>, BOND_RADIUS texture {Bond_C} } 
cylinder { <-5.637, -0.351, -1.699>, <-4.215, -0.448, -1.092>, BOND_RADIUS texture {Bond_C} } 
}

#declare qla = object {
	object { qla_obj } }
 