//------ Fin Head .......... 6/4/92 Mike Miller

include "tex.inc"
#include "tube1.inc"
#include "tube2.inc"


#declare FIN = intersection { Cube scale <1 55  35>  }

#declare DIFF1 = 
union {
  difference {
    quadric { Sphere scale <22 33 21> }
       plane { <0 1 0> 0 }
  }
         intersection { Disk_Y scale <22 10 21> translate <0 -10 0> }
}		 


//----- Head Section
#declare HEAD =
composite {
object {
union {
  difference {
    union {
quadric { Cylinder_Z scale <15.5 5.5 1> translate <0 -5 0> }
quadric { Cylinder_Z scale <15.5 5.5 1> translate <0 -12 0> }
quadric { Cylinder_Z scale <4.5 6.5 1> translate <-12 -8.5 0> }
quadric { Cylinder_Z scale <4.5 6.5 1> translate <12 -8.5 0> }
union {
intersection { FIN rotate <0 0 0> }
intersection { FIN rotate <0 0 22.5> }
intersection { FIN rotate <0 0 45> }  
intersection { FIN rotate <0 0 67.5> }
intersection { FIN rotate <0 0 90> }
intersection { FIN rotate <0 0 112.5> }
intersection { FIN rotate <0 0 135> }
intersection { FIN rotate <0 0 157.5> }
translate <0 -10 0> }
    }
union { DIFF1 inverse translate <0 0 -1> }
plane { <0 1 0> -20 }
quadric { Cylinder_Z scale <14 4 1> translate <0 -5 0> }
quadric { Cylinder_Z scale <14 4 1> translate <0 -12 0> }
quadric { Cylinder_Z scale <3 5 1> translate <-12 -8.5 0> }
quadric { Cylinder_Z scale <3 5 1> translate <12 -8.5 0> }
    }
quadric { Sphere scale <20 20 20> }
intersection { Disk_Y scale <20 10 20> translate <0 -10 0> }
   }
texture { GOLD_M }
bounded_by { sphere { <0 0 0> 40 }
   }
   }
//----Lens
object {
quadric { Sphere scale <18 15 25> translate <0 -8.5 0> }
texture { color Black reflection 0.2 phong 1 ambient 0.1 phong_size 75 }
}
}


//------ Air Filter
#declare FILTER = object {

union {
  intersection { Disk_X scale <7 4 4> }
  intersection { Disk_X scale <4 5 5> }
  intersection { Disk_Y scale <2 3 2> translate <0 -5 0> }
  intersection { Disk_Z scale <1.5 1.5 10> translate <0 0 10> rotate <-24 0 0 > }
  intersection { Disk_Z scale <1.5 1.5 10> translate <5 0 10> rotate <-24 0 0 > }
  intersection { Disk_Z scale <1.5 1.5 10> translate <-5 0 10> rotate <-24 0 0 > }

	intersection {
	quadric { QCone_Y scale <6 10 6> }
	plane { <0 -1 0> 10 }
	plane { <0 1 0> 0 }
	translate <0 -6 0> 
	}
  intersection { Disk_Y scale <7 0.5 7> translate <0 -16.5 0> }
	intersection {
	sphere { <0 -17 0> 6 }
	plane { <0 1 0> -17 }
	}
}
texture { GOLD_M }
	bounded_by {
        sphere { <0 -9 4> 24 }
	}
}



#declare EAR = object {
union {
  intersection { Disk_X scale <4 6 6> translate <-4 0 0> }
  intersection { Disk_X scale <1 7 7> translate <-8 0 0> }
  quadric { Sphere scale <2 6 6> translate <-9 0 0> }
  quadric { Sphere scale <2 3 3> translate <-11 0 0> }
}
texture { BLUE_M }
	bounded_by {
        sphere { <-5 0 0> 11 }
	}
}


//---- Neck Disk
#declare D1 = intersection { Disk_Y scale <10 0.7 10> }

#declare C1 = quadric { Cylinder_X scale <1 5 5> translate <0 0 -15> }



//-------- Chest Plate
#declare CHEST = object {
union {
union {
  intersection { Disk_Y scale <8 10 8> translate <0 0 0> }
  intersection { Cube scale <10 20 20> translate <0 -40 0> }
  intersection { Disk_Y scale <10 10 10> translate <10 -30 0> }
  intersection { Disk_Y scale <10 10 10> translate <-10 -30 0> }
  intersection { D1  translate <0 -2 0> }
  intersection { D1  translate <0 1 0> }
  intersection { D1  translate <0 4 0> }
  intersection { D1  translate <0 7 0> }
  quadric { Sphere scale <10 10 10> translate <-10 -20 0> }
  quadric { Sphere scale <10 10 10> translate <10 -20 0> }
}
difference {
union {
  quadric { C1 rotate <0 0 0> }
  quadric { C1 rotate <22.5 0 0> }
  quadric { C1 rotate <45 0 0> }
  quadric { C1 rotate <67.5 0 0> }
  quadric { C1 rotate <90 0 0> }
  }
  plane { <1 0 0> -10 }
  plane { <1 0 0> 10 inverse }
  translate <0 -20 0>
  }
}
texture { GRAY_M }
	bounded_by {
        sphere { <0 -20 0> 40 }
	}
}


//----- Air Tank
#declare TANK = object {
union {
  intersection { Disk_Y scale <13 40 13> translate <0 -40 0> }
  intersection { Disk_Y scale <4 3 4> translate <0 13 0> }
  quadric { Sphere scale <13 13 13> }
}
texture { GOLD_M }
}


//------ Neck Rods
#declare ROD = object {
union {
  intersection { Disk_Y scale <1 25 1> translate <-13 -45 -13> }
  intersection { Disk_Y scale <1 25 1> translate <13 -45 -13> }
}
texture { BLUE_M }
}


//------ Build The Aquadius Fin Head 

#declare FIN_HEAD =
composite {
composite { HEAD }                                   //----- fin head & lens
composite { P1 translate <0 -27 -30> }               //----- inner pipe
composite { P2 translate <0 -27 -30> }               //----- pipe ribs
object { FILTER translate <0 -27 -30> }              //----- Filter
object { EAR rotate <0 0 0> translate <-16 -13 0> }  //----- L Ear
object { EAR rotate <0 180 0> translate <16 -13 0> } //----- R Ear
object { CHEST translate <0 -30 0> }                 //----- Chest Plate
object { TANK translate <-29 -40 19> }               //----- L Tank
object { TANK translate <29 -40 19> }                //----- R Tank
object { ROD }                                       //----- Neck Rods

}

