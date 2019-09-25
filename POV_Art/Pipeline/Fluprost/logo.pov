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
#include "textures.inc"
#include "skies.inc"
#include "atoms_vdw.inc"
#include "atoms2.inc"
camera {
   location < 0, 0, -5>
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

object {
  light_source {
     <3, 4, -20>
     color Gray50
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

#declare poly =object {
    polygon {
	4,
	<0,0>, <0,1>, <1,1>, <1,0>
	 texture {
	  finish {ambient 1 diffuse 0}
	  pigment {image_map {tga "hclogo.tga" once}}
	 }
	translate <-.5, -.5, 0>
	}
}

#declare logo = object {
	intersection {
  	  cylinder { <0,0,0>, <0,0,.5>, .5 }
          object {poly} }
	 texture {
	  finish {ambient 1 diffuse 0}
	  pigment {Color White}
	 }
	}
}

object {logo}


       