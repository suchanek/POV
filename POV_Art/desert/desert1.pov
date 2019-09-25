#declare Camera1= camera{
       location <0,0,-3>
       direction <0, 0, 1>
       up <0,1,0>
       right <1.33,0,0>
       look_at <0,0,0>
       }
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
//#include "camlight.inc"     //My own file of cameras and lights.    
//#include "mtexts.inc"
#include "hglass.inc"
object {light_source{<0,0,0>color rgb<1.15,.95,.95>
                        area_light<0,-5,0><0,4,2.5>7,4 adaptive 1
                        translate <-30, 15, -1>}}
//object{light_source{<0,0,0> color rgb<.13,.11,.11> translate<8,3,-.5>}}
object {light_source{ <15,2,-3> color rgb<.61,.61,.61>
                spotlight point_at<6,4,1> radius 10 falloff 15
                tightness 50}}
                
camera {Camera1 rotate x*15 rotate y*15 translate <7, 2.3, 2>}

// Camera1 is simply the standard camera in the povdoc tutorial at0,0,-1
// looking at 0,0,0

object{sphere{<0,0,0>1 texture{Blue_Sky scale<1.5,.2,.2> rotate y*180}}
                        scale <1000,1000,1000>}

#declare Sand= texture{
                pigment{rgb<.76, .70, .4>}
                finish{diffuse .9 specular .05  brilliance .3 roughness .5}
normal{ripples .81 frequency 65000 turbulence <.4, 0,0> octaves 3 omega.4}
                scale <10000,10000,10000>
                }

#declare Desert= object{
                height_field{ gif "plasma3.gif"}
                scale <20,2,20>
                texture {Sand}
                }

object {Desert translate<0,0,0>}
object {HourGlass scale <.073,.073,.073> 
        rotate<14,22,22> translate <6,2.9,1>}


//              ****** The Face ******


//   Object    CenterX    CenterY    CenterZ    LengthX    LengthY    LengthZ
// ---------- ---------- ---------- ---------- ---------- ---------- ----------
// Object30   -137792.16   69574.23   78011.96  257794.31   81738.65  134813.52
// Object29    246610.30   69574.23   78011.96  257794.34   81738.65         134813.52
// Object27     19929.13  301262.88  109476.56 1039482.13  795546.25 1474119.88
#include "stones.inc"
#include "masque1.inc"

#declare Mask1=object{Mask 
                        translate<-19929.13, -301262.88, 109476.56>
                        scale <.00001, .00001, .00001>
                        rotate x*-110 rotate y*180 }

//  ** Mask1 is just Mask fron the original data, translated and scaled to be
//  at about 0,0,0 and a more reasonable size (see the original dimensions
// above!!!  **

object{Mask1 texture{Stone23 scale <10,8,15>} 
              scale<.623,.623,.623> rotate x*50 rotate y*75 rotate x*-35 
              translate<14,.85,13> }

// This is the positioning and texture for the final image.    

object {sphere{<0,0,0>1 texture{Stone23 scale <10,8,15>}}    //These spheres
       translate<14,1.85,13.4>}                              //block out the 
                                                             //nose and mouth
object {sphere{<0,0,0>1 texture{Stone23 scale <10,8,15>}}    //holes.
       scale<2,1,1>
       translate<13,1.45,13.4>}
  
// ******** THE RUINED TEMPLE ********
                                                      
// First some pillars..  Only some pillars as it turned out... :-)

#declare Fluting=object{union{
                        cylinder{<0,1,0> <0,9,0> .25}
                        sphere{<0,1,0> .25}
                        sphere{<0,9,0> .25}
                        }
                        }

#declare ColumnPt1= object{difference{ 
                cylinder{<0,0,0> <0,10,0> 2.5}
                        object{Fluting translate z*-2.5 rotate y*0}
                        object{Fluting translate z*-2.5 rotate y*40}
/*take the flutings */  object{Fluting translate z*-2.5 rotate y*80}
/*away from the */      object{Fluting translate z*-2.5 rotate y*120}
/*cylinder for the*/    object{Fluting translate z*-2.5 rotate y*160}
/*riged effect.*/       object{Fluting translate z*-2.5 rotate y*200}
                        object{Fluting translate z*-2.5 rotate y*240}
                        object{Fluting translate z*-2.5 rotate y*280}
                        object{Fluting translate z*-2.5 rotate y*320}
                        object{Fluting translate z*-2.5 rotate y*20}
                        object{Fluting translate z*-2.5 rotate y*60}
                        object{Fluting translate z*-2.5 rotate y*100}
                        object{Fluting translate z*-2.5 rotate y*140}
                        object{Fluting translate z*-2.5 rotate y*180}
                        object{Fluting translate z*-2.5 rotate y*220}
                        object{Fluting translate z*-2.5 rotate y*260}
                        object{Fluting translate z*-2.5 rotate y*300}
                        object{Fluting translate z*-2.5 rotate y*340}
                        }
                        }

#declare Top=object{union{
                        cone{<0,10,0>2.7 <0,11.5,0>3.3}
                        object{torus {2.9,.3} translate y*10.4}
                        object{torus {3.1,.3} translate y*10.8}
                        object{torus {3.3,.3} translate y*11.2}
                        }
                        }

#declare Base=object{union{
                        cylinder{<0,-.5,0> <0,0,0> 2.8}
                        object{torus{2.8,.25} translate y*-.25}
                        cylinder{<0,-1.5,0> <0,-.5,0> 3.2}
                        object{torus{3.2,.5} translate y*-1}
                        }
                        }

// In the end all the bases of the pillars are buried in the sand. They
// actually looked pretty good. Oh well.

#declare Column=object{union{
                        object{ColumnPt1}
                        object{Top}
                        object{Base}
                        }
            texture{Stone22 scale<2,2,2>}            
            scale<.51,1.3,.51>
            bounded_by{cylinder{<0,-2,0> <0,15,0> 4}}}

#declare HalfColumn1=object{difference{
                        object{Column}
                      //  sphere{<20,20,0>28}
                        plane{-y,6 rotate<40,0,30>}
                        }
                        }
#declare HalfColumn2=object{intersection{
                        object{Column}
                        plane{-y,4 rotate<40,0,30>}
                        }
                        }

object{Column scale <.081,.081,.081>translate <14.1,0.28,8>}
object{Column scale <.081,.081,.081>translate <13.4,0.3,8>}
object{Column scale <.081,.081,.081>rotate z*12 translate <12.43,0.3,8>}
object{Column scale <.081,.081,.081>translate <14,0.32,7.1>}
//object{HalfColumn1 scale <.081,.081,.081>translate <13.3,0.3,7.1>pigment{color Red}}
object{HalfColumn2 scale <.081,.081,.081>rotate z*45
                        rotate y*50 translate <11.3,.54,6.4> pigment{color Green}}
                
object{Column scale <.081,.081,.081>translate <12.2,0.3,7.1>}
 
