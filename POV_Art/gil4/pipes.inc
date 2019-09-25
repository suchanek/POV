//------- PipeWorks                     6/9/92 Miller
#include "colors.inc"
#include "metals.inc"
#include "textures.inc"
#include "shapes.inc"
#include "shapes2.inc"

#declare PIPES_INC_TEMP = version
#version 1

//***************
//------- Pipe Textures

#declare TEX1 = texture {
color SteelBlue
ambient 0.25
diffuse 0.7
phong 1
phong_size 100
0.02
}


#declare TEX2 = texture {T_Gold_1D}


//********************
//------- Torus Shapes

//--------Torus - outer17 inner11
#declare T_17_11 =
   quartic {
   <    1.000000 0.000000 0.000000 0.000000 2.000000
        0.000000 0.000000 2.000000 0.000000 -410.000000
        0.000000 0.000000 0.000000 0.000000 0.000000
        0.000000 0.000000 0.000000 0.000000 0.000000
        1.000000 0.000000 0.000000 2.000000 0.000000
        374.000000 0.000000 0.000000 0.000000 0.000000
        1.000000 0.000000 -410.000000 0.000000 34969.000000 >
   }

//----- Torus outer 7 inner 5
#declare T_7_5 =
   quartic {
   <    1.000000 0.000000 0.000000 0.000000 2.000000
        0.000000 0.000000 2.000000 0.000000 -74.000000
        0.000000 0.000000 0.000000 0.000000 0.000000
        0.000000 0.000000 0.000000 0.000000 0.000000
        1.000000 0.000000 0.000000 2.000000 0.000000
        70.000000 0.000000 0.000000 0.000000 0.000000
        1.000000 0.000000 -74.000000 0.000000 1225.000000 >
   }

//-----Torus outer8.5 inner 3.5
#declare T_3_8 =
   quartic {
   <    1.000000 0.000000 0.000000 0.000000 2.000000
        0.000000 0.000000 2.000000 0.000000 -84.500000
        0.000000 0.000000 0.000000 0.000000 0.000000
        0.000000 0.000000 0.000000 0.000000 0.000000
        1.000000 0.000000 0.000000 2.000000 0.000000
        59.500000 0.000000 0.000000 0.000000 0.000000
        1.000000 0.000000 -84.500000 0.000000 885.062500 >
   }



//******************************************
//--------- Pipe Parts

//----- 2.5 radius Flange
#declare F1 = intersection { Disk_X scale <.7 2.5 2.5> }

//----- Small Spoke
#declare S1 = intersection { Disk_Z scale <.7 .7 6> }

//----- 1.5 radius Pipe
#declare P1 =
object {
	intersection {
		quadric { Cylinder_X scale <1 1.5 1.5> }
		plane { <1 0 0> 0 }
	}
			texture { TEX1			}
}


//----- 6 radius X Pipe
#declare P2 =
object {
	intersection {
		quadric { Cylinder_X scale <1 6 6> }
		plane { <1 0 0> 0 }
	}
			texture { TEX1			}
}



//----- 1.5 radius Z Pipe
#declare P3 =
object {
        intersection {
        quadric { Cylinder_Z scale <1.5 1.5 1> }
        plane { <0 0 1> 0 inverse }
        }
		texture { TEX1
		}
}


//----- 1.5 Connector
#declare CONNECTOR_1 =
object {
        union {
        intersection { Disk_X scale <4 2.5 2.5> }
        intersection { Disk_Z scale <2.5 2.5 4> }
        }
                texture { TEX1
                }
}


#declare ELBOW_2 =
object {
	intersection {
	  torus { 20, 5 }
	  plane { <1,0,0> 0}
	  plane { <0,0,1> 0}
        }
        texture { TEX1 }
}

#declare ELBOW_egs =
 object { ELBOW_2
	  rotate <0,0,0>
	}


//------ Small Elbo
#declare ELBO_1 =
object {
        intersection {
        quartic { T_3_8 }
        plane { <0 0 1> 0 }
        plane { <1 0 0> 0 inverse }
        }
                texture { TEX1 }
}


//------ 1.5 radius Y Pipe
#declare P4 =
object {
        intersection {
        quadric { Cylinder_Y scale <1.5 1 1.5> }
        plane { <0 1 0> 0 }
        }
                texture { TEX1 }
}

#declare P4b =
object {
        intersection {
        quadric { Cylinder_Y scale <1.5 1 1.5> }
        plane { <0 1 0> 0 }
        plane {<0, -1, 0> 0}
        }
                texture { TEX1 }
}

//------ Large Collar
#declare COLLAR_1 =
object {
        union {
	       intersection { Disk_Y scale <16 10 16> translate <0 0 0> }
	       intersection { Disk_X scale <5 8 8> translate <-15 0 0> }
	       intersection {Disk_Z scale <5 5 5> translate <0 0 -15> }
	       intersection { Disk_Z scale <3 3 5> translate <0 0 -18> }
       }
                        texture { TEX1
                        }
}



#declare CUTTER =
difference {
        union {
	intersection { Disk_Y scale <15 2 15> translate <0 0 0> }
	intersection { Disk_Y scale <17 1 17> translate <0 0 0> }
        }
                quadric { Cylinder_Y scale <14 1 14> }
}






//------ Main Fat Vertical Stack
#declare MAIN_DRAIN =
object {
 difference {
	union {
//	intersection { Disk_Y scale <15 2 15> translate <0 38 0> }
//	intersection { Disk_Y scale <17 1 17> translate <0 38 0> }

        difference { CUTTER translate <0 38 0> }

	quartic { T_17_11 translate <0 33 0> }

	intersection {
		Disk_Y scale <13, 2, 13> translate <0, 30, 0>
		pigment { color red .1 green .1 blue .6}
		normal { waves 0.5 frequency 8 scale 55 }
	        finish { reflection 0.6 ior 1.2 refraction .8 }
        }


//		texture {T_Gold_1D}
//	}


	intersection { Disk_Y scale <14 15 14> translate <0 15 0> }
	intersection { Disk_Y scale <15 0.5 15> translate <0 20.5 0> }
	intersection { Disk_Y scale <15 0.5 15> translate <0 16.5 0> }
	intersection { Disk_Y scale <15 0.5 15> translate <0 12.5 0> }
   } // union
   intersection { Disk_Y scale <13 15 13> translate <0 15 0> }
  } // difference
  texture { TEX1 }
}

///

#include "bubble.inc"
#include "capsule.inc"



#declare drugsn_bucks = union {
 object {capsule_yb  rotate <0, 35, 50> translate <5, 35, 0>}
 object {capsule_bw  rotate <10, 25, -30> translate <20, 45, 0>}
 object {capsule_yb  rotate <0, 60, 0> translate <30, 55, 0>}
 object {capsule_bw  rotate <10, 25, -30> translate <50, 50, 0>}

 object {dollartext rotate <0,20, 90> translate <5, 25, 10>}
 object {dollartext rotate <0,20, 90> translate <-15, 30, 0>}
 object {dollartext rotate <0,20, 90> translate <-35, 50, 0>}
 object {dollartext rotate <0, 20, 90> translate <-75, 60, 0>}

}

#declare label_texture = texture {
 pigment {
// texture pigment {} attribute
// create a texture that lays an image's colors onto a surface
// image maps into X-Y plane from <0,0,0> to <1,1,0>
image_map
{
  gif "label1.gif" 
  map_type 2 // 0=planar, 1=spherical, 2=cylindrical, 5=torus
  interpolate 2 // 0=none, 1=linear, 2=bilinear, 4=normalized distance
  // [filter N V] // N=all or color index # (0...N), V= value (0.0...1.0)
  // [transmit N V] // N=all or color index # (0...N), V= value (0.0...1.0)
  // [use_color | use_index]
  once
  } // image_map
 } // pigment
 scale <1, 1, 1>
}


#declare label = object {
 cylinder {<0,0,0>, <0,2,0> .5 open}
 texture {label_texture rotate <0,0,0> scale <1, 1, 1> }
 rotate <0,0,0>
 }

#include "glass.inc"
#include "bottle2.inc"

#declare egs_bottle = union {
         cylinder {<0.0,0,0>, <0,2.1,0> .48 hollow texture {T_Orange_Glass}}
         object {label translate <0, 1,0>}
         object {capsule_yb  scale <.04, .04, .04> rotate <0, 35, 50> translate <0, .5, 0>}
}

#declare big_bottle = union {mjs_bottle scale <15, 15, 15> }

#declare bowl = object {
 union {

  intersection {
        sphere {<0,0,0>, 30 texture {TEX1}}
        plane {<0,1,0>, 0}
  } // intersection
 torus { 30, 3 texture {TEX2}}
 cylinder { <0, -.3, 0>, <0, .6, 0> 30.3
    pigment { color red 0 green .1 blue 0}
	normal {
		waves 0.5
		frequency 8
		scale 55
     }
	finish { reflection 0.6 ior 1.2 refraction .8 }
    }
  object {capsule_yb  rotate <0, 60, 0> translate <-10, 2, 3>}
  object {capsule_yb  rotate <0, 35, 50> translate <18, 1, -4>}

 } // union
}

#declare MAIN_DRAIN_egs =
object {
 difference {
	union {
         difference { CUTTER translate <0 38 0> }
 	 quartic { T_17_11 translate <0 33 0> }
	 
	 intersection { Disk_Y scale <14 15 14> translate <0 15 0> }
	 intersection { Disk_Y scale <15 0.5 15> translate <0 20.5 0> }
	 intersection { Disk_Y scale <15 0.5 15> translate <0 16.5 0> }
	 intersection { Disk_Y scale <15 0.5 15> translate <0 12.5 0> }

	cylinder {<0,0,0>, <0,-20,0>, 15}

    object {drugsn_bucks translate <0,40,0>}
    object {big_bottle rotate <5,25,90> translate <52, 95, -1> } // 50, 60, -2
    
//    object {bowl scale <1, 1, 1> rotate <0, 0, 90> translate <30, 60, 0> }
   } // union
   intersection { Disk_Y scale <13 15 13> translate <0 15 0> }
  } // difference

  texture { TEX1 }
}


#declare DRAIN_PIPE =
object {
	union {
		object {MAIN_DRAIN_egs rotate <0,0,0> translate <0,0,0> }
		object {MAIN_DRAIN_egs rotate <0,90,0> translate <0,0,0> }
		object {MAIN_DRAIN_egs rotate <0,180,0> translate <0,0,0> }
		object {MAIN_DRAIN_egs rotate <0,270,0> translate <0,0,0> }
	        cylinder { <50,0,0> <50,10,0> 10}
        }
}

//------ Small Shut-Off
#declare SHUT_OFF_1 =
object {
	union {
	intersection { F1 translate <9 0 0> }
	intersection { F1 translate <6 0 0> }
	intersection { F1 translate <-9 0 0> }
	intersection { F1 translate <-6 0 0> }
	intersection { Disk_X scale <9 1.6 1.6> translate <0 0 0> }
	quadric { Sphere scale <5 3.5 3.5> }
	intersection { Disk_Y scale <1 2.5 1> translate <0 5 0> }
	intersection { S1 rotate <0 0 0> translate <0 7.5 0> }
	intersection { S1 rotate <0 60 0> translate <0 7.5 0> }
	intersection { S1 rotate <0 120 0> translate <0 7.5 0> }
	quartic { T_7_5 translate <0 7.5 0> }
	}
		texture { TEX2
		}
}



//***********************
//---------------- ASSEMBLE PIPES
#declare egs_PIPES  =
composite {
	object { MAIN_DRAIN translate <0 -40 0> }
        object { COLLAR_1 translate <0 -50 0> }
        object {SHUT_OFF_1 rotate <180, 0, 0> translate <-27, -48, 0> }
        quadric { Sphere scale <3.5 2.5 2.5> translate <-37, -48, 0> texture {TEX2} }

	object {ELBO_1 translate <25, 0, -50> }
}

#declare PIPES  =
composite {
	object { MAIN_DRAIN translate <0 -40 0> }
	object { SHUT_OFF_1 translate <-35 -15.5 0> }
	object { SHUT_OFF_1 rotate <-90 0 0> translate <-90 -31.5 0> }
	object { SHUT_OFF_1 translate <-75 -15.5 -36> }
	object { SHUT_OFF_1 rotate <0 90 0> rotate <-90 0 0>  translate <-75 -49 -21> }
	object { P1 translate <0 -15.5 0> }
	object { P1 translate <0 -31.5 0> }
        object { P2 translate <0 -50 0> }
        object { CONNECTOR_1 translate <-55 -15.5 0> }
        object { CONNECTOR_1 translate <-55 -31.5 0> }
        object { CONNECTOR_1 translate <-75 -31.5 0> }
        object { P3 translate <-55 -15.5 -30> }
        object { P3 translate <-55 -31.5 -35> }
        object { P3 translate <-75 -31.5 -15> }
        object { COLLAR_1 translate <0 -50 0> }
        object { ELBO_1 translate <-61 -15.5 -30> }
        object { P1 translate <-61 -15.5 -36> }
        object { ELBO_1 rotate <0 0 90> translate <-55 -37.5 -35> }
        object { ELBO_1 rotate <0 0 90> translate <-75 -37.5 -15> }
        object { P4 translate <-55 -37.5 -41> }
        object { P4 translate <-75 -37.5 -21> }
        object { P4 scale <9 9 9> translate <0 -50 0>  }
}

#declare PIPES2  =
composite {
	object { MAIN_DRAIN translate <0 -40 0> }
	object { SHUT_OFF_1 translate <-35 -15.5 0> }
	object { SHUT_OFF_1 rotate <-90 0 0> translate <-90 -31.5 0> }
	object { SHUT_OFF_1 translate <-75 -15.5 -36> }
	object { SHUT_OFF_1 rotate <0 90 0> rotate <-90 0 0>  translate <-75 -49 -21> }
	object { P1 translate <0 -15.5 0> }
	object { P1 translate <0 -31.5 0> }
        object { P2 translate <0 -50 0> }
        object { CONNECTOR_1 translate <-55 -15.5 0> }
        object { CONNECTOR_1 translate <-55 -31.5 0> }
        object { CONNECTOR_1 translate <-75 -31.5 0> }
        object { P3 translate <-55 -15.5 -30> }
        object { P3 translate <-55 -31.5 -35> }
        object { P3 translate <-75 -31.5 -15> }
        object { COLLAR_1 translate <0 -50 0> }
        object { ELBO_1 translate <-61 -15.5 -30> }
        object { P1 translate <-61 -15.5 -36> }
        object { ELBO_1 rotate <0 0 90> translate <-55 -37.5 -35> }
        object { ELBO_1 rotate <0 0 90> translate <-75 -37.5 -15> }
        object { P4 translate <-55 -37.5 -41> }
        object { P4 translate <-75 -37.5 -21> }
        object { P4 scale <9 9 9> translate <0 -50 0>  }
}



#version PIPES_INC_TEMP


