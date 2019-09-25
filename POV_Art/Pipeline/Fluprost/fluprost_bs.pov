//
// PDB2POV (DOS) atom input prepared by pdb2pov 09/29/97 23:03:17
// Author: Eric G. Suchanek, Ph.D.
// Mac port: Richard G. Rothwell, Ph.D.
//	Atoms:   63
//	Extent:	Xmin: -7.971 Xmax: 10.340,
//		Ymin: -7.399, Ymax: 7.934
//		Zmin: -5.628 Zmax: 5.657
//	Enclosing Sphere: 10.870

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
   location < 0, 0, -16.635 >
   direction < 0, 0, 1>
   up <0, 1, 0>
   right <4/3, 0, 0>
   look_at <0, 0, 0>
}
object {
  light_source {
     <10.340, 7.934, -25.156>
     color White
  }
}
#declare Sky = sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.75  color CornflowerBlue]
      [1.00  color MidnightBlue]
    }
    scale 2
    translate <-1, -1, -1>
  }
  pigment {
    bozo
    turbulence 0.6
    octaves 7
    omega .49876
    lambda 2.5432
    color_map {
      [0.0 color rgbf<.75, .75, .75, 0.1>]
      [0.4 color rgbf<.9, .9, .9, .9>]
      [0.7 color rgbf<1, 1, 1, 1>]
    }
    scale 6/10
    scale <1, 0.3, 0.3>
  }
  pigment {
    bozo
    turbulence 0.6
    octaves 8
    omega .5123
    lambda 2.56578
    color_map {
      [0.0 color rgbf<.375, .375, .375, 0.2>]
      [0.4 color rgbf<.45, .45, .45, .9>]
      [0.6 color rgbf<0.5, 0.5, 0.5, 1>]
    }
    scale 6/10
    scale <1, 0.3, 0.3>
  }
}
 sky_sphere{Sky}


/* Create the beloved famous raytrace checkered floor */
plane { y, -11.232250
      pigment {
      checker colour Black colour White
      scale 5.607333
     }
     finish {
       ambient 0.2
       diffuse 0.8
     }
}
#declare BOND_RADIUS = 0.20
#declare ATM_SCL = 0.30

#declare fluprost_bs_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <-4.481, -4.427, -1.052> }
object {Atom_C scale ATM_SCL * .8 translate <-3.905, -3.137, -0.543> }
object {Atom_H scale ATM_SCL translate <-4.555, -2.726, 0.237> }
object {Atom_H scale ATM_SCL translate <-2.907, -3.320, -0.127> }
object {Atom_C scale ATM_SCL * .8 translate <-3.805, -2.129, -1.694> }
object {Atom_H scale ATM_SCL translate <-4.803, -1.963, -2.118> }
object {Atom_C scale ATM_SCL * .8 translate <-3.241, -0.787, -1.203> }
object {Atom_H scale ATM_SCL translate <-4.000, -0.284, -0.592> }
object {Atom_H scale ATM_SCL translate <-2.346, -0.936, -0.591> }
object {Atom_C scale ATM_SCL * .8 translate <-2.892, 0.096, -2.408> }
object {Atom_H scale ATM_SCL translate <-2.448, -0.379, -3.290> }
object {Atom_C scale ATM_SCL * .8 translate <-3.104, 1.414, -2.427> }
object {Atom_H scale ATM_SCL translate <-2.829, 1.975, -3.328> }
object {Atom_C scale ATM_SCL * .8 translate <-3.716, 2.188, -1.251> }
object {Atom_H scale ATM_SCL translate <-4.564, 2.797, -1.580> }
object {Atom_H scale ATM_SCL translate <-4.079, 1.479, -0.498> }
object {Atom_C scale ATM_SCL * .8 translate <-2.664, 3.110, -0.620> }
object {Atom_H scale ATM_SCL translate <-2.909, 3.263, 0.438> }
object {Atom_C scale ATM_SCL * .8 translate <-2.544, 4.493, -1.291> }
object {Atom_H scale ATM_SCL translate <-2.753, 5.269, -0.544> }
object {Atom_O scale ATM_SCL translate <-3.418, 4.654, -2.391> }
object {Atom_H scale ATM_SCL translate <-3.330, 5.532, -2.766> }
object {Atom_C scale ATM_SCL * .8 translate <-1.078, 4.603, -1.734> }
object {Atom_H scale ATM_SCL translate <-0.711, 5.634, -1.674> }
object {Atom_H scale ATM_SCL translate <-0.969, 4.226, -2.758> }
object {Atom_C scale ATM_SCL * .8 translate <-0.333, 3.680, -0.769> }
object {Atom_H scale ATM_SCL translate <-0.276, 4.151, 0.221> }
object {Atom_O scale ATM_SCL translate <0.953, 3.353, -1.253> }
object {Atom_H scale ATM_SCL translate <1.420, 2.803, -0.623> }
object {Atom_C scale ATM_SCL * .8 translate <-1.270, 2.472, -0.722> }
object {Atom_H scale ATM_SCL translate <-1.175, 1.918, -1.664> }
object {Atom_C scale ATM_SCL * .8 translate <-0.965, 1.549, 0.465> }
object {Atom_H scale ATM_SCL translate <-1.252, 1.862, 1.474> }
object {Atom_C scale ATM_SCL * .8 translate <-0.356, 0.377, 0.285> }
object {Atom_H scale ATM_SCL translate <-0.076, 0.056, -0.725> }
object {Atom_C scale ATM_SCL * .8 translate <-0.044, -0.526, 1.486> }
object {Atom_H scale ATM_SCL translate <-0.626, -1.441, 1.352> }
object {Atom_O scale ATM_SCL translate <-0.439, 0.149, 2.665> }
object {Atom_H scale ATM_SCL translate <-0.694, -0.463, 3.357> }
object {Atom_C scale ATM_SCL * .8 translate <1.460, -0.847, 1.518> }
object {Atom_H scale ATM_SCL translate <1.957, -0.024, 2.045> }
object {Atom_H scale ATM_SCL translate <1.845, -0.885, 0.492> }
object {Atom_C scale ATM_SCL * .8 translate <1.821, -2.161, 2.237> }
object {Atom_H scale ATM_SCL translate <2.015, -2.959, 1.512> }
object {Atom_H scale ATM_SCL translate <0.955, -2.465, 2.837> }
object {Atom_O scale ATM_SCL translate <2.905, -2.035, 3.139> }
object {Atom_C scale ATM_SCL * .8 translate <4.171, -2.236, 2.550> }
object {Atom_C scale ATM_SCL * .8 translate <4.808, -3.465, 2.715> }
object {Atom_H scale ATM_SCL translate <4.323, -4.261, 3.293> }
object {Atom_C scale ATM_SCL * .8 translate <6.063, -3.678, 2.148> }
object {Atom_H scale ATM_SCL translate <6.565, -4.644, 2.274> }
object {Atom_C scale ATM_SCL * .8 translate <6.684, -2.661, 1.423> }
object {Atom_H scale ATM_SCL translate <7.671, -2.844, 0.985> }
object {Atom_C scale ATM_SCL * .8 translate <6.055, -1.426, 1.264> }
object {Atom_C scale ATM_SCL * .8 translate <6.725, -0.278, 0.496> }
object {Atom_F scale ATM_SCL translate <6.023, -0.038, -0.671> }
object {Atom_F scale ATM_SCL translate <8.040, -0.568, 0.183> }
object {Atom_F scale ATM_SCL translate <6.700, 0.865, 1.275> }
object {Atom_C scale ATM_SCL * .8 translate <4.790, -1.223, 1.819> }
object {Atom_H scale ATM_SCL translate <4.285, -0.260, 1.683> }
object {Atom_H scale ATM_SCL translate <-3.163, -2.550, -2.476> }
object {Atom_O scale ATM_SCL translate <-5.671, -4.843, -0.617> }
object {Atom_O scale ATM_SCL translate <-3.855, -5.099, -1.870> }
cylinder { <-4.481, -4.427, -1.052>, <-4.223, -4.808, -1.461>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.223, -4.808, -1.461>, <-3.855, -5.099, -1.870>, BOND_RADIUS texture {Bond_O} }
cylinder { <-4.481, -4.427, -1.052>, <-5.046, -4.663, -0.834>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.046, -4.663, -0.834>, <-5.671, -4.843, -0.617>, BOND_RADIUS texture {Bond_O} }
cylinder { <-3.805, -2.129, -1.694>, <-3.560, -2.381, -2.085>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.560, -2.381, -2.085>, <-3.163, -2.550, -2.476>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.790, -1.223, 1.819>, <4.524, -0.648, 1.751>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.524, -0.648, 1.751>, <4.285, -0.260, 1.683>, BOND_RADIUS texture {Bond_H} }
cylinder { <6.055, -1.426, 1.264>, <4.790, -1.223, 1.819>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.171, -2.236, 2.550>, <4.790, -1.223, 1.819>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.725, -0.278, 0.496>, <6.771, 0.379, 0.886>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.771, 0.379, 0.886>, <6.700, 0.865, 1.275>, BOND_RADIUS texture {Bond_F} }
cylinder { <6.725, -0.278, 0.496>, <7.359, -0.445, 0.340>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.359, -0.445, 0.340>, <8.040, -0.568, 0.183>, BOND_RADIUS texture {Bond_F} }
cylinder { <6.725, -0.278, 0.496>, <6.287, -0.140, -0.087>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.287, -0.140, -0.087>, <6.023, -0.038, -0.671>, BOND_RADIUS texture {Bond_F} }
cylinder { <6.055, -1.426, 1.264>, <6.725, -0.278, 0.496>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.684, -2.661, 1.423>, <6.055, -1.426, 1.264>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.684, -2.661, 1.423>, <7.135, -2.770, 1.204>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.135, -2.770, 1.204>, <7.671, -2.844, 0.985>, BOND_RADIUS texture {Bond_H} }
cylinder { <6.063, -3.678, 2.148>, <6.684, -2.661, 1.423>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.063, -3.678, 2.148>, <6.326, -4.255, 2.211>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.326, -4.255, 2.211>, <6.565, -4.644, 2.274>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.808, -3.465, 2.715>, <6.063, -3.678, 2.148>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.808, -3.465, 2.715>, <4.622, -3.941, 3.004>, BOND_RADIUS texture {Bond_C} }
cylinder { <4.622, -3.941, 3.004>, <4.323, -4.261, 3.293>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.171, -2.236, 2.550>, <4.808, -3.465, 2.715>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.905, -2.035, 3.139>, <3.578, -2.122, 2.845>, BOND_RADIUS texture {Bond_O} }
cylinder { <3.578, -2.122, 2.845>, <4.171, -2.236, 2.550>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.821, -2.161, 2.237>, <2.424, -2.089, 2.688>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.424, -2.089, 2.688>, <2.905, -2.035, 3.139>, BOND_RADIUS texture {Bond_O} }
cylinder { <1.821, -2.161, 2.237>, <1.447, -2.343, 2.537>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.447, -2.343, 2.537>, <0.955, -2.465, 2.837>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.821, -2.161, 2.237>, <1.848, -2.638, 1.875>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.848, -2.638, 1.875>, <2.015, -2.959, 1.512>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.460, -0.847, 1.518>, <1.821, -2.161, 2.237>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.460, -0.847, 1.518>, <1.553, -0.870, 1.005>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.553, -0.870, 1.005>, <1.845, -0.885, 0.492>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.460, -0.847, 1.518>, <1.760, -0.355, 1.782>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.760, -0.355, 1.782>, <1.957, -0.024, 2.045>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.044, -0.526, 1.486>, <1.460, -0.847, 1.518>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.439, 0.149, 2.665>, <-0.546, -0.175, 3.011>, BOND_RADIUS texture {Bond_O} }
cylinder { <-0.546, -0.175, 3.011>, <-0.694, -0.463, 3.357>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.044, -0.526, 1.486>, <-0.162, -0.143, 2.076>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.162, -0.143, 2.076>, <-0.439, 0.149, 2.665>, BOND_RADIUS texture {Bond_O} }
cylinder { <-0.044, -0.526, 1.486>, <-0.348, -1.073, 1.419>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.348, -1.073, 1.419>, <-0.626, -1.441, 1.352>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.356, 0.377, 0.285>, <-0.044, -0.526, 1.486>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.356, 0.377, 0.285>, <-0.314, 0.185, -0.220>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.314, 0.185, -0.220>, <-0.076, 0.056, -0.725>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.965, 1.549, 0.465>, <-0.356, 0.377, 0.285>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.965, 1.549, 0.465>, <-1.010, 1.736, 0.970>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.010, 1.736, 0.970>, <-1.252, 1.862, 1.474>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.270, 2.472, -0.722>, <-0.965, 1.549, 0.465>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.270, 2.472, -0.722>, <-1.314, 2.141, -1.193>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.314, 2.141, -1.193>, <-1.175, 1.918, -1.664>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.333, 3.680, -0.769>, <-1.270, 2.472, -0.722>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.664, 3.110, -0.620>, <-1.270, 2.472, -0.722>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.953, 3.353, -1.253>, <1.206, 3.062, -0.938>, BOND_RADIUS texture {Bond_O} }
cylinder { <1.206, 3.062, -0.938>, <1.420, 2.803, -0.623>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.333, 3.680, -0.769>, <0.278, 3.494, -1.011>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.278, 3.494, -1.011>, <0.953, 3.353, -1.253>, BOND_RADIUS texture {Bond_O} }
cylinder { <-0.333, 3.680, -0.769>, <-0.208, 3.961, -0.274>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.208, 3.961, -0.274>, <-0.276, 4.151, 0.221>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.078, 4.603, -1.734>, <-0.333, 3.680, -0.769>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.078, 4.603, -1.734>, <-1.123, 4.378, -2.246>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.123, 4.378, -2.246>, <-0.969, 4.226, -2.758>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.078, 4.603, -1.734>, <-0.888, 5.219, -1.704>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.888, 5.219, -1.704>, <-0.711, 5.634, -1.674>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.544, 4.493, -1.291>, <-1.078, 4.603, -1.734>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.418, 4.654, -2.391>, <-3.385, 5.119, -2.578>, BOND_RADIUS texture {Bond_O} }
cylinder { <-3.385, 5.119, -2.578>, <-3.330, 5.532, -2.766>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.544, 4.493, -1.291>, <-3.055, 4.584, -1.841>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.055, 4.584, -1.841>, <-3.418, 4.654, -2.391>, BOND_RADIUS texture {Bond_O} }
cylinder { <-2.544, 4.493, -1.291>, <-2.575, 4.957, -0.917>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.575, 4.957, -0.917>, <-2.753, 5.269, -0.544>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.664, 3.110, -0.620>, <-2.544, 4.493, -1.291>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.664, 3.110, -0.620>, <-2.683, 3.201, -0.091>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.683, 3.201, -0.091>, <-2.909, 3.263, 0.438>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.716, 2.188, -1.251>, <-2.664, 3.110, -0.620>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.716, 2.188, -1.251>, <-3.824, 1.764, -0.874>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.824, 1.764, -0.874>, <-4.079, 1.479, -0.498>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.716, 2.188, -1.251>, <-4.172, 2.552, -1.415>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.172, 2.552, -1.415>, <-4.564, 2.797, -1.580>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.104, 1.414, -2.427>, <-3.716, 2.188, -1.251>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.104, 1.414, -2.427>, <-3.054, 1.749, -2.877>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.054, 1.749, -2.877>, <-2.829, 1.975, -3.328>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.892, 0.096, -2.408>, <-3.104, 1.414, -2.427>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.892, 0.096, -2.408>, <-2.756, -0.188, -2.849>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.756, -0.188, -2.849>, <-2.448, -0.379, -3.290>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.241, -0.787, -1.203>, <-2.892, 0.096, -2.408>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.241, -0.787, -1.203>, <-2.734, -0.876, -0.897>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.734, -0.876, -0.897>, <-2.346, -0.936, -0.591>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.241, -0.787, -1.203>, <-3.561, -0.486, -0.897>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.561, -0.486, -0.897>, <-4.000, -0.284, -0.592>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.805, -2.129, -1.694>, <-3.241, -0.787, -1.203>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.805, -2.129, -1.694>, <-4.345, -2.030, -1.906>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.345, -2.030, -1.906>, <-4.803, -1.963, -2.118>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.905, -3.137, -0.543>, <-3.805, -2.129, -1.694>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.905, -3.137, -0.543>, <-3.365, -3.246, -0.335>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.365, -3.246, -0.335>, <-2.907, -3.320, -0.127>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.905, -3.137, -0.543>, <-4.154, -2.891, -0.153>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.154, -2.891, -0.153>, <-4.555, -2.726, 0.237>, BOND_RADIUS texture {Bond_H} }
cylinder { <-4.481, -4.427, -1.052>, <-3.905, -3.137, -0.543>, BOND_RADIUS texture {Bond_C} }
}

#declare fluprost_bs = object {
	object { fluprost_bs_obj } }

object { fluprost_bs }
