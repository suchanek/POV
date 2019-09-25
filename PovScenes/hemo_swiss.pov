// POV-Ray ray tracer scene file, generated by Swiss-PdbViewer
// 100 100 n 1
// File:E:\EGS\PovScenes\hemo_swiss.pov
// Swiss-PdbViewer can be retrieved by anonymous ftp at:
// http://www.expasy.ch/spdbv/mainpage.html
//
// POV-Ray can be retrieved at: http://www.povray.org
// N.Guex, 1995-97
//
#version 3    // this scene uses POV-Ray 3.x syntax

#include "colors.inc"
#include "textures.inc"

// ------ COLORS ---------

#declare ATM_FINISH = finish {specular 1 roughness 0.001}
#declare RIBBON_FINISH = finish {specular 1 roughness 0.001}
#declare EDM_FINISH = finish {specular 1 roughness 0.001}
#declare Surf_tex = texture { pigment { colour red 0.000 green 0.000 blue 0.000 filter 0.750} finish{ metallic }}
#declare N_tex = texture { pigment { colour red 0.235 green 0.318 blue 1.000 } finish{ ATM_FINISH }}
#declare C_tex = texture { pigment { colour red 1.000 green 1.000 blue 1.000 } finish{ ATM_FINISH }}
#declare O_tex = texture { pigment { colour red 1.000 green 0.000 blue 0.000 } finish{ ATM_FINISH }}
#declare P_tex = texture { pigment { colour red 1.000 green 0.659 blue 0.082 } finish{ ATM_FINISH }}
#declare H_tex = texture { pigment { colour red 0.294 green 0.800 blue 1.000 } finish{ ATM_FINISH }}
#declare S_tex = texture { pigment { colour red 1.000 green 0.933 blue 0.000 } finish{ ATM_FINISH }}
#declare X_tex = texture { pigment { colour red 0.624 green 0.624 blue 0.624 } finish{ ATM_FINISH }}
#declare SSBnd_tex = texture { pigment { colour red 1.000 green 0.933 blue 0.000 } finish{ ATM_FINISH }}
#declare HBnd_tex = texture { pigment { colour red 0.000 green 1.000 blue 0.000 filter 0.5} finish{ ATM_FINISH }}
#declare WkHBnd_tex = texture { pigment { colour red 0.561 green 0.682 blue 0.561 filter 0.5} finish{ ATM_FINISH }}
#declare Clash_tex = texture { pigment { colour red 1.000 green 0.424 blue 1.000 filter 0.5} finish{ ATM_FINISH }}

// ------ Bonds radii ---------

#declare rRIBN = 0.06   // flat Ribbon radius
#declare rEDM = 0.04   // EDM cylinder radius
#declare r_Atm = 0.200   // atom radius
#declare r_Bnd = 0.200   // bond radius
#declare r_HBnd = 0.075   // H-bond radius
#declare CA_relativeSize = 1.000   // enlargement factor for CA

// ---- Radius for "spacefilled" atoms ----
 #declare rO_ = 1.4
 #declare rN_ = 1.5
 #declare rC_ = 1.7
 #declare rCA_ = 1.7
 #declare rS_ = 1.85
 #declare rP_ = 1.9
 #declare rH_ = 1.1
 #declare rX_ = 1.0

// ---- Radius for "joining" atoms ----
 #declare VDW_factor = 0.200   // changing this value will alter the radius of "joining" atoms

// when atom radii below are all set to 1.0, you obtain a smooth "sticks" model
 #declare rO = 1.0 * VDW_factor
 #declare rN = 1.0 * VDW_factor
 #declare rC = 1.0 * VDW_factor
 #declare rCA = 1.0 * VDW_factor * CA_relativeSize
 #declare rS = 1.0 * VDW_factor
 #declare rP = 1.0 * VDW_factor
 #declare rH = 1.0 * VDW_factor
 #declare rX = 1.0 * VDW_factor

// ---- some TEXT parameters ----
 #declare Label_scale = .75   // Text height in angstroms
 #declare Label_XDecal = .5  // Horizontal offset from CA
 #declare Label_YDecal =  0 // Vertical offset from CA

 #declare Dist_scale = .4   // Text height in angstroms
 #declare Dist_XDecal = -.6 // Horizontal offset from middle of H-bond
 #declare Dist_YDecal =  0   // Vertical offset from middle of H-bond

 #declare Dist_ZDecal = -.25  // Depth offset from middle of H-bond

#declare Label_tex = texture { pigment { colour red 1.000 green 1.000 blue 1.000 } finish{ metallic }}
#declare Dist_tex = texture { pigment { colour red 1.000 green 1.000 blue 0.000 } finish{ metallic }}
//************ OBJECTS *********
#include "hemo_swiss.inc"



// ----- 1hbg -----
object{ A0_shape }   // HEM148

//************ CAMERA *********

camera { location < 0, 0, -60.2>  // get closer to <0,0,0> to zoom in on the model
// rotate < 0, 2.000, 0>    //  uncomment to get  left Eye stereo view
// rotate < 0, -2.000, 0>   //  uncomment to get right Eye stereo view
 direction < 0, 0, 1.207>
 up <0, 1, 0>
 right <100/100, 0, 0>  // **NOTE:** do not forget to adjust this value according to final Width/Height rendering
 look_at <0, 0, 0>
}
//************ LIGHTS *********

#declare Intensity = 2
background { color rgb < 0.000, 0.000, 0.275 >} 
object { light_source {< -20.000, 20.000, -20.000 > color rgb Intensity*1.000 }}
object { light_source {< 0.000, 20.000, -20.000 > color rgb Intensity*0.500 }}
//END
