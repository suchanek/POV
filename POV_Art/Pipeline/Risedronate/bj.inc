/*	Eric's famous bell_jar object 1 unit in width, 3 in height

	Enclosing Sphere: 25.721
*/

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "marble2.inc"
#version 3.0

#declare MyGlass =
 texture
   {pigment
     {color red 0.98 green 0.98 blue 0.98 filter 0.9}
    finish
     {ambient 0.1
      diffuse 0.1
      specular 0.8
      reflection 0.1
      refraction 0.9
      ior 1.25
      roughness 0.0003
      phong 1 phong_size 300
     }
   }



/* The Bell Jar glass object */
#declare hemi = object {
	intersection {
		       sphere { <0, 3, 0> , 1}
		       sphere { <0, 3, 0> , .9}
	               plane {  -y, 2.5 }
                     }
}

#declare cyl = object {
	cylinder { <0,0,0>, <0,3.0,0>, .9 open}
}

#declare bell = merge {
   object { cyl }
   object { hemi }
   scale <1, 1.5, 1>
   texture { Glass3 }
}

#declare bell2 = object {bell inverse
			 scale <.95, .95, .95>
}

/*-----------BASE OF COLUMN A / TOP FLOOR-------------------*/
#declare base_a = union {
   sphere { <0, 0, 0>, 1 scale <1.3, .55, 1.3> }
   sphere { <0, 0, 0>, 1 scale <1.1, .3, 1.1> translate <0,.4,0>  }
   cylinder { <0,0,0>, y, 1 scale <1.0, .4, 1.0> translate <0,.5,0> }
   torus {.91 .11 translate <0,.62,0> texture { Gold_Texture}}

   texture {
      marble1
      scale <.9, .6, .4>
      finish {
         ambient 0.1
         diffuse 1
      }
   }
   texture {
      marble4
      scale <.7, .12, .9>
      rotate <0, 0, -40>
      finish {
         diffuse 1.0
         phong 0.6
         phong_size 50
      }
   }


   rotate 40*y
   bounded_by {
      cylinder {
         <0,0,0>, y, 1
         scale <1.35, 1.6, 1.35>
         translate -.4*y
      }
   }
}

#declare bell_jar = union {
	object { bell }
	object {base_a  translate <0, -.90, 0>}
	}




