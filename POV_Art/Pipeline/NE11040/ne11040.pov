//
// Persistence of Vision Ray Tracer Scene Description File
// File: pipeline.pov
// Vers: 3
// Desc: P&GP Pipeline drugs
// Date: 2/7/97
// Auth: Eric G. Suchanek, Ph.D.

#version 3.0
global_settings { assumed_gamma 1.8 }

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
#include "bonds.inc"
#include "skies.inc"
#include "bell_jar.inc"

//
// scene objects to render
//
#declare DO_SKY = true
#declare DO_RAINBOW = true
#declare DO_GROUND = true

//
// Aspect ratios for camera right vectors
//

#include "aspect.inc"
//#declare ASPECT = 2/3
#declare ASPECT = 2/3

#include "cameras.inc"

#include "egs_sig.inc"
#include "pipeline_sky.inc"
#include "rainbow.inc"
#include "pipeline_ground.inc"

/* Object definitions follow */

#declare BOND_RADIUS = 0.17
#declare ATM_SCL = 1

#declare ne11040_obj = union {
object {Atom_C scale ATM_SCL * .8 translate <2.741, -1.261, -0.130> }
object {Atom_H scale ATM_SCL translate <3.545, -1.194, -0.650> }
object {Atom_H scale ATM_SCL translate <2.581, -2.190, 0.047> }
object {Atom_C scale ATM_SCL * .8 translate <2.984, -0.527, 1.185> }
object {Atom_H scale ATM_SCL translate <2.220, -0.666, 1.750> }
object {Atom_H scale ATM_SCL translate <3.756, -0.880, 1.634> }
object {Atom_C scale ATM_SCL * .8 translate <3.171, 0.953, 0.955> }
object {Atom_H scale ATM_SCL translate <3.231, 1.392, 1.806> }
object {Atom_C scale ATM_SCL * .8 translate <2.021, 1.518, 0.163> }
object {Atom_H scale ATM_SCL translate <1.221, 1.490, 0.693> }
object {Atom_H scale ATM_SCL translate <2.220, 2.437, -0.029> }
object {Atom_C scale ATM_SCL * .8 translate <1.771, 0.788, -1.165> }
object {Atom_H scale ATM_SCL translate <2.567, 0.895, -1.691> }
object {Atom_C scale ATM_SCL * .8 translate <0.621, 1.434, -1.918> }
object {Atom_H scale ATM_SCL translate <0.781, 2.377, -1.993> }
object {Atom_H scale ATM_SCL translate <0.571, 1.065, -2.803> }
object {Atom_C scale ATM_SCL * .8 translate <-0.719, 1.198, -1.220> }
object {Atom_H scale ATM_SCL translate <-0.682, 1.617, -0.357> }
object {Atom_H scale ATM_SCL translate <-1.444, 1.591, -1.711> }
object {Atom_C scale ATM_SCL * .8 translate <-0.977, -0.298, -1.008> }
object {Atom_H scale ATM_SCL translate <-1.048, -0.685, -1.883> }
object {Atom_C scale ATM_SCL * .8 translate <0.190, -1.016, -0.305> }
object {Atom_H scale ATM_SCL translate <0.228, -0.661, 0.586> }
object {Atom_C scale ATM_SCL * .8 translate <1.563, -0.734, -0.985> }
object {Atom_C scale ATM_SCL * .8 translate <-0.117, -2.505, -0.168> }
object {Atom_H scale ATM_SCL translate <-0.193, -2.884, -1.047> }
object {Atom_H scale ATM_SCL translate <0.603, -2.947, 0.287> }
object {Atom_C scale ATM_SCL * .8 translate <-1.452, -2.734, 0.575> }
object {Atom_H scale ATM_SCL translate <-1.610, -3.677, 0.658> }
object {Atom_H scale ATM_SCL translate <-1.358, -2.373, 1.459> }
object {Atom_C scale ATM_SCL * .8 translate <-2.662, -2.063, -0.094> }
object {Atom_C scale ATM_SCL * .8 translate <-2.301, -0.555, -0.281> }
object {Atom_C scale ATM_SCL * .8 translate <-2.441, 0.016, 1.131> }
object {Atom_H scale ATM_SCL translate <-1.632, -0.121, 1.630> }
object {Atom_H scale ATM_SCL translate <-2.631, 0.957, 1.098> }
object {Atom_C scale ATM_SCL * .8 translate <-3.592, -0.749, 1.787> }
object {Atom_H scale ATM_SCL translate <-3.410, -0.929, 2.712> }
object {Atom_H scale ATM_SCL translate <-4.400, -0.234, 1.730> }
object {Atom_C scale ATM_SCL * .8 translate <-3.798, -2.065, 0.983> }
object {Atom_H scale ATM_SCL translate <-3.664, -2.814, 1.568> }
object {Atom_C scale ATM_SCL * .8 translate <-3.008, -2.799, -1.395> }
object {Atom_H scale ATM_SCL translate <-3.768, -2.380, -1.804> }
object {Atom_H scale ATM_SCL translate <-3.209, -3.720, -1.213> }
object {Atom_H scale ATM_SCL translate <-2.255, -2.747, -1.988> }
object {Atom_C scale ATM_SCL * .8 translate <1.662, -1.435, -2.344> }
object {Atom_H scale ATM_SCL translate <2.504, -1.253, -2.769> }
object {Atom_H scale ATM_SCL translate <0.947, -1.125, -2.905> }
object {Atom_H scale ATM_SCL translate <1.573, -2.381, -2.205> }
object {Atom_C scale ATM_SCL * .8 translate <-5.207, -2.090, 0.471> }
object {Atom_C scale ATM_SCL * .8 translate <-7.392, -2.818, 0.935> }
object {Atom_H scale ATM_SCL translate <-7.876, -3.381, 1.544> }
object {Atom_H scale ATM_SCL translate <-7.531, -3.126, 0.036> }
object {Atom_H scale ATM_SCL translate <-7.706, -1.914, 1.016> }
object {Atom_N scale ATM_SCL translate <-3.388, 0.106, -1.108> }
object {Atom_H scale ATM_SCL translate <-4.205, -0.172, -0.938> }
object {Atom_H scale ATM_SCL translate <-3.377, 1.067, -0.960> }
object {Atom_H scale ATM_SCL translate <-3.409, -0.121, -2.079> }
object {Atom_O scale ATM_SCL translate <4.383, 1.222, 0.212> }
object {Atom_O scale ATM_SCL translate <-5.631, -1.486, -0.468> }
object {Atom_O scale ATM_SCL translate <-5.984, -2.833, 1.236> }
object {Atom_C scale ATM_SCL * .8 translate <5.477, 1.672, 0.972> }
object {Atom_H scale ATM_SCL translate <5.166, 2.313, 1.615> }
object {Atom_C scale ATM_SCL * .8 translate <6.410, 2.380, 0.025> }
object {Atom_H scale ATM_SCL translate <5.878, 2.956, -0.529> }
object {Atom_C scale ATM_SCL * .8 translate <7.107, 1.391, -0.868> }
object {Atom_H scale ATM_SCL translate <6.478, 1.015, -1.487> }
object {Atom_H scale ATM_SCL translate <7.786, 1.844, -1.374> }
object {Atom_C scale ATM_SCL * .8 translate <7.728, 0.267, -0.102> }
object {Atom_H scale ATM_SCL translate <8.440, 0.624, 0.434> }
object {Atom_C scale ATM_SCL * .8 translate <6.712, -0.377, 0.813> }
object {Atom_H scale ATM_SCL translate <6.021, -0.759, 0.267> }
object {Atom_C scale ATM_SCL * .8 translate <7.261, -1.438, 1.710> }
object {Atom_H scale ATM_SCL translate <6.539, -1.809, 2.222> }
object {Atom_H scale ATM_SCL translate <7.906, -1.046, 2.304> }
object {Atom_H scale ATM_SCL translate <7.680, -2.132, 1.197> }
object {Atom_O scale ATM_SCL translate <6.126, 0.635, 1.660> }
object {Atom_O scale ATM_SCL translate <7.337, 3.196, 0.745> }
object {Atom_H scale ATM_SCL translate <6.925, 3.722, 1.221> }
object {Atom_O scale ATM_SCL translate <8.228, -0.743, -0.990> }
object {Atom_H scale ATM_SCL translate <8.565, -1.349, -0.552> }
object {Atom_C scale ATM_SCL * .8 translate <-8.260, 3.173, 0.161> }
object {Atom_C scale ATM_SCL * .8 translate <-7.144, 4.111, 0.444> }
object {Atom_H scale ATM_SCL translate <-7.423, 4.987, 0.722> }
object {Atom_C scale ATM_SCL * .8 translate <-5.830, 3.938, 0.386> }
object {Atom_H scale ATM_SCL translate <-5.304, 4.701, 0.636> }
object {Atom_C scale ATM_SCL * .8 translate <-5.051, 2.756, -0.036> }
object {Atom_O scale ATM_SCL translate <-9.403, 3.572, 0.212> }
object {Atom_H scale ATM_SCL translate <-9.405, 4.372, 0.396> }
object {Atom_O scale ATM_SCL translate <-8.035, 1.950, -0.128> }
object {Atom_O scale ATM_SCL translate <-3.841, 2.858, -0.165> }
object {Atom_O scale ATM_SCL translate <-5.653, 1.641, -0.185> }
cylinder { <-5.051, 2.756, -0.036>, <-5.362, 2.123, -0.110>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.362, 2.123, -0.110>, <-5.653, 1.641, -0.185>, BOND_RADIUS texture {Bond_O} }
cylinder { <-5.051, 2.756, -0.036>, <-4.455, 2.814, -0.100>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.455, 2.814, -0.100>, <-3.841, 2.858, -0.165>, BOND_RADIUS texture {Bond_O} }
cylinder { <-8.260, 3.173, 0.161>, <-8.167, 2.479, 0.017>, BOND_RADIUS texture {Bond_C} }
cylinder { <-8.167, 2.479, 0.017>, <-8.035, 1.950, -0.128>, BOND_RADIUS texture {Bond_O} }
cylinder { <-9.403, 3.572, 0.212>, <-9.398, 3.996, 0.304>, BOND_RADIUS texture {Bond_O} }
cylinder { <-9.398, 3.996, 0.304>, <-9.405, 4.372, 0.396>, BOND_RADIUS texture {Bond_H} }
cylinder { <-8.260, 3.173, 0.161>, <-8.828, 3.399, 0.187>, BOND_RADIUS texture {Bond_C} }
cylinder { <-8.828, 3.399, 0.187>, <-9.403, 3.572, 0.212>, BOND_RADIUS texture {Bond_O} }
cylinder { <-5.830, 3.938, 0.386>, <-5.051, 2.756, -0.036>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.830, 3.938, 0.386>, <-5.543, 4.394, 0.511>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.543, 4.394, 0.511>, <-5.304, 4.701, 0.636>, BOND_RADIUS texture {Bond_H} }
cylinder { <-7.144, 4.111, 0.444>, <-5.830, 3.938, 0.386>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.144, 4.111, 0.444>, <-7.256, 4.634, 0.583>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.256, 4.634, 0.583>, <-7.423, 4.987, 0.722>, BOND_RADIUS texture {Bond_H} }
cylinder { <-8.260, 3.173, 0.161>, <-7.144, 4.111, 0.444>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.228, -0.743, -0.990>, <8.410, -1.064, -0.771>, BOND_RADIUS texture {Bond_O} }
cylinder { <8.410, -1.064, -0.771>, <8.565, -1.349, -0.552>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.728, 0.267, -0.102>, <7.918, -0.306, -0.546>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.918, -0.306, -0.546>, <8.228, -0.743, -0.990>, BOND_RADIUS texture {Bond_O} }
cylinder { <7.337, 3.196, 0.745>, <7.145, 3.475, 0.983>, BOND_RADIUS texture {Bond_O} }
cylinder { <7.145, 3.475, 0.983>, <6.925, 3.722, 1.221>, BOND_RADIUS texture {Bond_H} }
cylinder { <6.410, 2.380, 0.025>, <6.922, 2.843, 0.385>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.922, 2.843, 0.385>, <7.337, 3.196, 0.745>, BOND_RADIUS texture {Bond_O} }
cylinder { <6.712, -0.377, 0.813>, <6.476, 0.197, 1.237>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.476, 0.197, 1.237>, <6.126, 0.635, 1.660>, BOND_RADIUS texture {Bond_O} }
cylinder { <5.477, 1.672, 0.972>, <5.848, 1.083, 1.316>, BOND_RADIUS texture {Bond_C} }
cylinder { <5.848, 1.083, 1.316>, <6.126, 0.635, 1.660>, BOND_RADIUS texture {Bond_O} }
cylinder { <7.261, -1.438, 1.710>, <7.420, -1.853, 1.454>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.420, -1.853, 1.454>, <7.680, -2.132, 1.197>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.261, -1.438, 1.710>, <7.641, -1.204, 2.007>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.641, -1.204, 2.007>, <7.906, -1.046, 2.304>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.261, -1.438, 1.710>, <6.950, -1.660, 1.966>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.950, -1.660, 1.966>, <6.539, -1.809, 2.222>, BOND_RADIUS texture {Bond_H} }
cylinder { <6.712, -0.377, 0.813>, <7.261, -1.438, 1.710>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.712, -0.377, 0.813>, <6.313, -0.605, 0.540>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.313, -0.605, 0.540>, <6.021, -0.759, 0.267>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.728, 0.267, -0.102>, <6.712, -0.377, 0.813>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.728, 0.267, -0.102>, <8.136, 0.480, 0.166>, BOND_RADIUS texture {Bond_C} }
cylinder { <8.136, 0.480, 0.166>, <8.440, 0.624, 0.434>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.107, 1.391, -0.868>, <7.728, 0.267, -0.102>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.107, 1.391, -0.868>, <7.397, 1.662, -1.121>, BOND_RADIUS texture {Bond_C} }
cylinder { <7.397, 1.662, -1.121>, <7.786, 1.844, -1.374>, BOND_RADIUS texture {Bond_H} }
cylinder { <7.107, 1.391, -0.868>, <6.732, 1.166, -1.177>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.732, 1.166, -1.177>, <6.478, 1.015, -1.487>, BOND_RADIUS texture {Bond_H} }
cylinder { <6.410, 2.380, 0.025>, <7.107, 1.391, -0.868>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.410, 2.380, 0.025>, <6.090, 2.724, -0.252>, BOND_RADIUS texture {Bond_C} }
cylinder { <6.090, 2.724, -0.252>, <5.878, 2.956, -0.529>, BOND_RADIUS texture {Bond_H} }
cylinder { <5.477, 1.672, 0.972>, <6.410, 2.380, 0.025>, BOND_RADIUS texture {Bond_C} }
cylinder { <5.477, 1.672, 0.972>, <5.384, 2.055, 1.294>, BOND_RADIUS texture {Bond_C} }
cylinder { <5.384, 2.055, 1.294>, <5.166, 2.313, 1.615>, BOND_RADIUS texture {Bond_H} }
cylinder { <4.383, 1.222, 0.212>, <4.879, 1.417, 0.592>, BOND_RADIUS texture {Bond_O} }
cylinder { <4.879, 1.417, 0.592>, <5.477, 1.672, 0.972>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.392, -2.818, 0.935>, <-6.668, -2.827, 1.086>, BOND_RADIUS texture {Bond_C} }
cylinder { <-6.668, -2.827, 1.086>, <-5.984, -2.833, 1.236>, BOND_RADIUS texture {Bond_O} }
cylinder { <-5.207, -2.090, 0.471>, <-5.544, -2.512, 0.854>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.544, -2.512, 0.854>, <-5.984, -2.833, 1.236>, BOND_RADIUS texture {Bond_O} }
cylinder { <-5.207, -2.090, 0.471>, <-5.482, -1.747, 0.002>, BOND_RADIUS texture {Bond_C} }
cylinder { <-5.482, -1.747, 0.002>, <-5.631, -1.486, -0.468>, BOND_RADIUS texture {Bond_O} }
cylinder { <3.171, 0.953, 0.955>, <3.727, 1.106, 0.584>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.727, 1.106, 0.584>, <4.383, 1.222, 0.212>, BOND_RADIUS texture {Bond_O} }
cylinder { <-3.388, 0.106, -1.108>, <-3.448, -0.019, -1.593>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.448, -0.019, -1.593>, <-3.409, -0.121, -2.079>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.388, 0.106, -1.108>, <-3.375, 0.636, -1.034>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.375, 0.636, -1.034>, <-3.377, 1.067, -0.960>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.388, 0.106, -1.108>, <-3.788, -0.047, -1.023>, BOND_RADIUS texture {Bond_N} }
cylinder { <-3.788, -0.047, -1.023>, <-4.205, -0.172, -0.938>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.301, -0.555, -0.281>, <-2.883, -0.194, -0.694>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.883, -0.194, -0.694>, <-3.388, 0.106, -1.108>, BOND_RADIUS texture {Bond_N} }
cylinder { <-7.392, -2.818, 0.935>, <-7.541, -2.278, 0.976>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.541, -2.278, 0.976>, <-7.706, -1.914, 1.016>, BOND_RADIUS texture {Bond_H} }
cylinder { <-7.392, -2.818, 0.935>, <-7.549, -3.002, 0.486>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.549, -3.002, 0.486>, <-7.531, -3.126, 0.036>, BOND_RADIUS texture {Bond_H} }
cylinder { <-7.392, -2.818, 0.935>, <-7.575, -3.154, 1.240>, BOND_RADIUS texture {Bond_C} }
cylinder { <-7.575, -3.154, 1.240>, <-7.876, -3.381, 1.544>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.798, -2.065, 0.983>, <-5.207, -2.090, 0.471>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.662, -1.435, -2.344>, <1.631, -2.000, -2.274>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.631, -2.000, -2.274>, <1.573, -2.381, -2.205>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.662, -1.435, -2.344>, <1.250, -1.250, -2.624>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.250, -1.250, -2.624>, <0.947, -1.125, -2.905>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.662, -1.435, -2.344>, <2.042, -1.326, -2.556>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.042, -1.326, -2.556>, <2.504, -1.253, -2.769>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.563, -0.734, -0.985>, <1.662, -1.435, -2.344>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.008, -2.799, -1.395>, <-2.689, -2.768, -1.691>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.689, -2.768, -1.691>, <-2.255, -2.747, -1.988>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.008, -2.799, -1.395>, <-3.091, -3.349, -1.304>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.091, -3.349, -1.304>, <-3.209, -3.720, -1.213>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.008, -2.799, -1.395>, <-3.428, -2.549, -1.599>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.428, -2.549, -1.599>, <-3.768, -2.380, -1.804>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.662, -2.063, -0.094>, <-3.008, -2.799, -1.395>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.798, -2.065, 0.983>, <-3.674, -2.513, 1.276>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.674, -2.513, 1.276>, <-3.664, -2.814, 1.568>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.592, -0.749, 1.787>, <-3.798, -2.065, 0.983>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.662, -2.063, -0.094>, <-3.798, -2.065, 0.983>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.592, -0.749, 1.787>, <-4.002, -0.441, 1.759>, BOND_RADIUS texture {Bond_C} }
cylinder { <-4.002, -0.441, 1.759>, <-4.400, -0.234, 1.730>, BOND_RADIUS texture {Bond_H} }
cylinder { <-3.592, -0.749, 1.787>, <-3.411, -0.857, 2.250>, BOND_RADIUS texture {Bond_C} }
cylinder { <-3.411, -0.857, 2.250>, <-3.410, -0.929, 2.712>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.441, 0.016, 1.131>, <-3.592, -0.749, 1.787>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.441, 0.016, 1.131>, <-2.539, 0.578, 1.115>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.539, 0.578, 1.115>, <-2.631, 0.957, 1.098>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.441, 0.016, 1.131>, <-1.988, -0.066, 1.381>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.988, -0.066, 1.381>, <-1.632, -0.121, 1.630>, BOND_RADIUS texture {Bond_H} }
cylinder { <-2.301, -0.555, -0.281>, <-2.441, 0.016, 1.131>, BOND_RADIUS texture {Bond_C} }
cylinder { <-2.662, -2.063, -0.094>, <-2.301, -0.555, -0.281>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.977, -0.298, -1.008>, <-2.301, -0.555, -0.281>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.452, -2.734, 0.575>, <-2.662, -2.063, -0.094>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.452, -2.734, 0.575>, <-1.319, -2.518, 1.017>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.319, -2.518, 1.017>, <-1.358, -2.373, 1.459>, BOND_RADIUS texture {Bond_H} }
cylinder { <-1.452, -2.734, 0.575>, <-1.523, -3.297, 0.617>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.523, -3.297, 0.617>, <-1.610, -3.677, 0.658>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.117, -2.505, -0.168>, <-1.452, -2.734, 0.575>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.117, -2.505, -0.168>, <0.287, -2.769, 0.060>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.287, -2.769, 0.060>, <0.603, -2.947, 0.287>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.117, -2.505, -0.168>, <-0.241, -2.731, -0.607>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.241, -2.731, -0.607>, <-0.193, -2.884, -1.047>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.190, -1.016, -0.305>, <-0.117, -2.505, -0.168>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.190, -1.016, -0.305>, <1.563, -0.734, -0.985>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.771, 0.788, -1.165>, <1.563, -0.734, -0.985>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.741, -1.261, -0.130>, <1.563, -0.734, -0.985>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.190, -1.016, -0.305>, <0.296, -0.804, 0.141>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.296, -0.804, 0.141>, <0.228, -0.661, 0.586>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.977, -0.298, -1.008>, <0.190, -1.016, -0.305>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.977, -0.298, -1.008>, <-1.098, -0.529, -1.445>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.098, -0.529, -1.445>, <-1.048, -0.685, -1.883>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.719, 1.198, -1.220>, <-0.977, -0.298, -1.008>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.719, 1.198, -1.220>, <-1.129, 1.433, -1.465>, BOND_RADIUS texture {Bond_C} }
cylinder { <-1.129, 1.433, -1.465>, <-1.444, 1.591, -1.711>, BOND_RADIUS texture {Bond_H} }
cylinder { <-0.719, 1.198, -1.220>, <-0.616, 1.448, -0.788>, BOND_RADIUS texture {Bond_C} }
cylinder { <-0.616, 1.448, -0.788>, <-0.682, 1.617, -0.357>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.621, 1.434, -1.918>, <-0.719, 1.198, -1.220>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.621, 1.434, -1.918>, <0.510, 1.214, -2.360>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.510, 1.214, -2.360>, <0.571, 1.065, -2.803>, BOND_RADIUS texture {Bond_H} }
cylinder { <0.621, 1.434, -1.918>, <0.694, 1.997, -1.955>, BOND_RADIUS texture {Bond_C} }
cylinder { <0.694, 1.997, -1.955>, <0.781, 2.377, -1.993>, BOND_RADIUS texture {Bond_H} }
cylinder { <1.771, 0.788, -1.165>, <0.621, 1.434, -1.918>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.771, 0.788, -1.165>, <2.118, 0.852, -1.428>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.118, 0.852, -1.428>, <2.567, 0.895, -1.691>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.021, 1.518, 0.163>, <1.771, 0.788, -1.165>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.021, 1.518, 0.163>, <2.102, 2.067, 0.067>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.102, 2.067, 0.067>, <2.220, 2.437, -0.029>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.021, 1.518, 0.163>, <1.673, 1.501, 0.428>, BOND_RADIUS texture {Bond_C} }
cylinder { <1.673, 1.501, 0.428>, <1.221, 1.490, 0.693>, BOND_RADIUS texture {Bond_H} }
cylinder { <3.171, 0.953, 0.955>, <2.021, 1.518, 0.163>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.171, 0.953, 0.955>, <3.284, 1.215, 1.381>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.284, 1.215, 1.381>, <3.231, 1.392, 1.806>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.984, -0.527, 1.185>, <3.171, 0.953, 0.955>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.984, -0.527, 1.185>, <3.414, -0.738, 1.410>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.414, -0.738, 1.410>, <3.756, -0.880, 1.634>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.984, -0.527, 1.185>, <2.657, -0.610, 1.468>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.657, -0.610, 1.468>, <2.220, -0.666, 1.750>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.741, -1.261, -0.130>, <2.984, -0.527, 1.185>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.741, -1.261, -0.130>, <2.678, -1.816, -0.041>, BOND_RADIUS texture {Bond_C} }
cylinder { <2.678, -1.816, -0.041>, <2.581, -2.190, 0.047>, BOND_RADIUS texture {Bond_H} }
cylinder { <2.741, -1.261, -0.130>, <3.092, -1.221, -0.390>, BOND_RADIUS texture {Bond_C} }
cylinder { <3.092, -1.221, -0.390>, <3.545, -1.194, -0.650>, BOND_RADIUS texture {Bond_H} }
}

#declare ne11040 = object {
	object { ne11040_obj } }




// create a TrueType text shape
#declare ne11040_text = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "NE-11040",   // the string to create
  .75,           // the extrusion depth
  0            // offset
  pigment { BrightGold }
  finish { reflection .25 specular 1 ambient .3 }

 }
 scale <3,3,1>
 rotate <10, 0, 0>
}

#declare ne11040_orient = object {ne11040 rotate 90*z}

#declare ne11040_labeled = union {
  object {         ne11040
                   rotate <0, 0, 90>
                   translate <0,2,0>
                   scale 1.0
                   }
  object { ne11040_text translate <-6, -13, -2> }
}

object {
  light_source {
     <10.225, 8.082, -20.039>
     color White

  }
}

/*
object {
  light_source {
     <0.225, 100.082, -20.039>
     color White
     shadowless
  }
}
*/

object {ne11040_labeled}
camera {camera_ne11040}

object { egstext
        scale <.5,.5,.5>
        rotate <10, 1, 0>
        translate <5, -13, -5>
         }


//
// end of file


