/*#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
#include "camlight.inc"

object {SpotLight2 scale <1, 1, 1> rotate x*15 rotate y*-5 translate z*-20}
object {BrightLight1 scale <1, 1, 1> translate <10, 0, -2>}
camera {Camera1 translate <1.5, -6, -19>}
// sky sphere
//object{sphere{<0,0,0> 1 texture {Blood_Sky}} scale<2900,2900,2900>}
// A floor
//object {plane {<0,1,0>, -14 texture{White_Marble scale <20,20,20>} }}
//   An hour glass..
  */
                                                  
// A disk for the top and bottom..
#declare HBase= object{ difference{
                cylinder {<0,0,0> <0,1,0> 6}
                sphere{<0,-2.2,0> 2.9}
                }
                texture {DMFDarkOak scale<2.23,2.23,2.2> rotate<-20,-50,0>}
                texture {pigment{ 
                image_map{gif "banner.gif" map_type 2 filter 255, 1} 
                scale<1,1,1>}
                
                      

                rotate y*180 }
                }


// four little pillars to support it..
#declare HPillar= object{ union{
                cylinder{<0,-15,0> <0,0,0> .4}
                sphere{<0,-13,0> .5}
                sphere{<0,-12.05,0> .55}
                sphere{<0,-10,0> .6}
                sphere{<0,-8.85,0> .55}
                sphere{<0,-7.8,0> .5}
                sphere{<0,-4,0> .7}
                sphere{<0,-3,0> .6}
                }
scale <1.3,1.2,1.3>                }

#declare HT1=object{difference{
        sphere{<0,-2.2,0> 2.8} plane{<0,1,0>, -2.5}  
        }
        }                                               //Small hemisphere
                                                        //and big one.

#declare HT2=object{difference{
        sphere{<0,-2.2,0> 2.5} plane{<0,1,0>, -2.5}  
        }
        }


#declare HGTop= object{ difference{              // a hollow hemisphere
                        object{HT1}
                        object{HT2}
                        }
                        }


#declare HGMid= object{difference{
                cylinder{<0,-8.5,0 > <0,-2.2,0> 2.8}
                cylinder{<0,-8.5,0 > <0,-2.2,0> 2.5 /*scale<.8,.8,.8>*/}
                }
                }                           
                                                //Hollow cylinder

#declare HGlass= object{difference{merge{
                                        object{HGTop}
                                        object{HGMid}
                                        }
                        sphere{<1.3,-8,1.5> 3.3}
                        sphere{<1.1,-8.5,-2.8> 1.5}
                        }
           //  THIS HAS A TEXTURE!!!
           texture  {Glass}// {pigment{Red}finish{Shiny}}//Glass}
                }
                
#declare HFrame= object{ union{
                object{HBase}
                object{HBase rotate x*180 rotate y*-120 translate y*-15}
                object{HPillar translate z*-4.75 rotate<0,0,0>}
                object{HPillar translate z*-4.75 rotate<0,90,0>}
                object{HPillar translate z*-4.75 rotate<0,180,0>}
                object{HPillar translate z*-4.75 rotate<0,270,0>}
                }
                // THIS HAS A TEXTURE!!!
                texture {DMFWood1 scale <4.3,4.3,4> rotate <33,56,34>}
                }


#declare HourGlass =object{union{
                        object{HFrame}
                        object{HGlass}
                        }
              bounded_by{box{<-7,-16,-7><7,2,7> }}         }

//object {HourGlass rotate y*42.5 rotate z*25 rotate x*10}
