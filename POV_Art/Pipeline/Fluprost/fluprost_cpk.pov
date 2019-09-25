//
// PDB2POV (DOS) atom input prepared by pdb2pov 09/29/97 23:06:01
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
   assumed_gamma 2.2 }

#include "colors.inc"
#include "shapes.inc"
#include "shapes2.inc"

#include "textures.inc"
#include "skies.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
camera {
   location < 0, 0, -20>
   direction < 0, 0, 1>
   up <0, 1, 0>
   right <1.52, 0, 0>
//   right <4/3, 0, 0>
   look_at <0, -1, 0>
}
object {
  light_source {
     <10.340, 7.934, -25.156>
     color White
  }
}

object {
  light_source {
     <0, 1, -20>
     color Gray30
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
#declare checker_ground = plane { y, -11.0
      pigment {
      checker colour Black colour White
      scale 5.607333
     }
     finish {
       ambient 0.2
       diffuse 0.8
     }
}


#declare sapphire_ground = plane { y, -11.0
   pigment {
      Sapphire_Agate
      quick_color Red
      scale 10.0
   }
   finish {
      ambient 0.2
      diffuse 0.75
      reflection 0.85
   }
}


#declare ATM_SCL = 1.00

#declare fluprost_cpk_obj = union {
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
}

#declare fluprost_cpk = object {
	object { fluprost_cpk_obj } }



// my signature
//
#declare _redmetal = texture {pigment {color Orange} finish {Metal}}
#declare _bluemetal = texture {pigment {color LightBlue} finish {Metal}}

#declare egstext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "E. G. Suchanek, 1998",   // the string to create
  .1,           // the extrusion depth
  0            // offset
  texture {_bluemetal }
 }
 scale .32
}


#declare titletext = object {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "NE-11086",   // the string to create
  .1,           // the extrusion depth
  0            // offset
 // texture {pigment { BrightGold } finish { Metal } }
  texture {_bluemetal }
 }
 scale 2.25
}

/////

#declare mirrors =
union {
   plane { z, 20  rotate -45*y }
   plane { z, 20  rotate +45*y }

   pigment { DimGray }
   finish {
      ambient 0.2
      diffuse 0.75
      reflection 0.75
   }
}

/* Stand for the vase */
#declare stand = object { Hexagon
   rotate -90.0*z             /* Stand it on end (vertical)*/
   rotate -45*y               /* Turn it to a pleasing angle */
   scale <40, 25, 40>
   translate -70*y

   pigment {
      Sapphire_Agate
      quick_color Red
      scale 100.0
   }
   finish {
      ambient 0.2
      diffuse 0.75
      reflection 0.25
   }
}



#declare logo_plane = object {
 plane
 {
  z, -.01
  texture
  {
    pigment
    {
      image_map
      {
        tga "hclogo.tga"
        interpolate 2 // smooth it
        once   // don't tile image, just one copy
 //       filter 0 0.8  // make 1st color mostly transparent
 //       filter 1 0.8  // make 2nd color mostly transparent
      }
      // transform it to unit-size (-1 to +1)
      translate -0.5*(x+y) // center on the origin
      scale 2              // make it unit-sized
    }
    finish {Shiny}
  }
 }
}
#declare shiny_gold = texture {pigment { BrightGold } finish { Metal } }

#declare ring = object {
  // torus {MAJOR, MINOR} // (in the X-Z plane)
// MAJOR = float value giving the major radius
// MINOR = float specifying the minor radius
// The major radius extends from the center of the hole
// to the mid-line of the rim while the minor radius
// is the radius of the cross-section of the rim.
torus
{  .98,  0.03}
  texture {_bluemetal}
  rotate x*90 }


#declare logo_disk = object {
  union{
     intersection {
         object {logo_plane}
         cylinder { 0*z,-.02*z,1 open}
     }

    object {ring}
  }
  rotate x * 90  // now oriented with Y up.
 }

object {logo_disk scale 20 translate -10*y+7*z}


///////////

// the world

object { fluprost_cpk translate y*-2}


object {egstext translate <10.5, -9.75, -2.>}

object {titletext  translate <-5.0, 6, -1.5> }

//object {mirrors}

// object {sapphire_ground}
