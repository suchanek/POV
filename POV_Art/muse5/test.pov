#version 3.0
// pc gamma is about 2.5
// mac gamma is about 1.8
// unix gamma is about 1.7
// note that 1.8 is the closest to uncorrected gamma (typical MAC), so
// we'll assume that's the case here. Using a gamma of 1.8 also optimizes
// the image for CMYK printing, since this gamma value approximates CMYK ink
// (according to Photoshop). As a result, the image should print with relatively
// true colors.

global_settings {
                 assumed_gamma 1.7
                 max_trace_level 10
                }

#include "colors.inc"
#include "skies.inc"


#include "column.inc"
#include "picframe.inc"
#include "picframe_new.pov"

#include "marble2.inc"


//
// some useful switch variables for cameras, views and objects
//

#declare ORIGINAL = false   // true for the 'classic' version
#declare NEW = true         // now the default

#declare VENUS = false       // set to true to include Venus deMilo
#declare WORLD = false      // set to true to include the world map
#declare ATMOS = false      // set to true to include atmosphere - long!
#declare OUTSIDE = false    // set to true to view from the outside
#declare DO_RAINBOW = true  // do the rainbow
#declare BRIGHT = false     // bright interior spotlight, cool shadows
#declare DAYTIME = true     // create the sun outside
#declare DNA_CARTOON = true      // the DNA cartoon mobile
#declare LAMBDA = true      // lambda repressor picture
#include "aspect.inc"

// 3500x2300

#declare ASPECT=1.33


#declare the_lens = camera {
   direction <0,0,1>
   up <0,1,0>
   right <ASPECT,0,0>
 //  angle 55
}



#declare camera_front = camera {
  the_lens
  location <0, 0, -35>
  look_at <0,0,10>
}

camera {camera_front}

#if (DAYTIME)
light_source {    <0,5,-50> color rgb <1,1,0.8>   } // The Sun
#end

// additional light in the room, if you really want it
light_source {   <0,0,-100> color rgb <1,1,1>}

/*
plane { y,-100 pigment { color Brown }
	normal { bumps 1.0 octaves 5 scale 20 }
        finish { crand 0.003 ambient 0.6 diffuse 0.4 }}

*/

object {egs_frame scale <.5, .5, .5>}