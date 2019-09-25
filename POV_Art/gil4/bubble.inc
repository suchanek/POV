#include "colors.inc"
#include "glass.inc"

#declare bubble = sphere {<0,0,0> 1 hollow
                           texture {T_Glass1}
                         }

#declare dollartext = object {
 union {
 text
 {
  ttf          // font type (only TrueType format for now)
  "timrom.ttf",  // Microsoft Windows-format TrueType font file name
  "$",   // the string to create
  .2,           // the extrusion depth
  0            // offset
   pigment { Green }
  finish { reflection .20 specular 1 ambient .2 }
 } // text
 object {bubble translate <.2, .3, 0>}
 } // union

 scale 7
}
