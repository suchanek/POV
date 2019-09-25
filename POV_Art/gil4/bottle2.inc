#declare TMP = version
#version 3
#include "colors.inc" //pre-defined colors
#include "shapes.inc" //pre-defined shapes
#include "textures.inc" //pre-defined textures
#include "glass.inc"

#declare Bottle = 
   difference {
      merge {
         cylinder { <0.0, 0.0, 0.0>,<0.0,3.0,0.0>, 1.001 }
         cylinder { <0.0, 2.9, 0.0>,<0.0,3.0001,0.0>, 1.05 }
         torus { .95, .05 }
      }
      object { cylinder {<0.0, 0.125, 0.0>,<0.0,3.1,0.0> 0.95} }
      translate -1.5*y
            texture { T_Orange_Glass }
   }

#declare labeltex =
            texture {
               pigment {
                  image_map { tga "test_label_final.tga"
		     interpolate 2
                     map_type 0 once
                     filter all 1.0
                  }
                  translate <-0.5,-0.5,0.0>
	          scale <504.0, 360.0 ,1>
                  scale <.004, .004, 1>
               }
            }


#declare Label =
intersection {
   difference {
      cylinder { <0,-0.72,0>,<0,0.72,0>,1.0011 open }
      cylinder { <0,-0.72,0>,<0,0.72,0>,1.000 open }
   }
   plane { < 0,0,1>,0}
/*
   union {
      plane { <1.0,0.0,1.0>,0.0 }
      plane { <-1.0,0.0,1.0>,0.0 }
   }
*/
   texture { T_Orange_Glass }
   texture { labeltex }
}

#declare mjs_bottle = 
merge {
  object { Bottle }
  object { Label }
}


#version TMP
