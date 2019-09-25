//
//   CJFAlabaster is similar to PinkAlabaster, the colours and the scale
//   have been changed
//

#declare CJFAlabaster =
        texture {
                pigment {
                        bozo
                        turbulence 0.25
                        color_map {
                                [0,  1 color red 0.9 green 0.75 blue 0.75
                                       color red 0.6 green 0.6  blue 0.6 ]
                                }
                        scale 1
                        }
                finish { ambient 0.25 }
                }
        texture { 
                pigment { 
                        granite
                        color_map {
                        [0, 0.9 color DarkOrchid filter 1 color DarkOrchid filter 0.5]
                        [0.9, 1 color DarkSlateBlue color DarkSlateBlue]
                                }
                        scale 5       // Twice as large as unit shape
                        }
        finish { 
                specular 1
                roughness 0.0001
                phong 0.25
                phong_size 75
                brilliance 4
                }
        }

//
//   Note: Middle is the same as Column.INC, only the height has been
//   changed and the box definition has changed to a torus!!
//

#declare Middle = union {
cylinder { <0.0000, 0, 10.5000>, <0.0000, 5, 10.5000>, 1.0000 }
cylinder { <1.8233, 0, 10.3405>, <1.8233, 5, 10.3405>, 1.0000 }
cylinder { <3.5912, 0, 9.8668>, <3.5912, 5, 9.8668>, 1.0000 }
cylinder { <5.2500, 0, 9.0933>, <5.2500, 5, 9.0933>, 1.0000 }
cylinder { <6.7493, 0, 8.0435>, <6.7493, 5, 8.0435>, 1.0000 }
cylinder { <8.0435, 0, 6.7493>, <8.0435, 5, 6.7493>, 1.0000 }
cylinder { <9.0933, 0, 5.2500>, <9.0933, 5, 5.2500>, 1.0000 }
cylinder { <9.8668, 0, 3.5912>, <9.8668, 5, 3.5912>, 1.0000 }
cylinder { <10.3405, 0, 1.8233>, <10.3405, 5, 1.8233>, 1.0000 }
cylinder { <10.5000, 0, 0.0000>, <10.5000, 5, 0.0000>, 1.0000 }
cylinder { <10.3405, 0, -1.8233>, <10.3405, 5, -1.8233>, 1.0000 }
cylinder { <9.8668, 0, -3.5912>, <9.8668, 5, -3.5912>, 1.0000 }
cylinder { <9.0933, 0, -5.2500>, <9.0933, 5, -5.2500>, 1.0000 }
cylinder { <8.0435, 0, -6.7493>, <8.0435, 5, -6.7493>, 1.0000 }
cylinder { <6.7493, 0, -8.0435>, <6.7493, 5, -8.0435>, 1.0000 }
cylinder { <5.2500, 0, -9.0933>, <5.2500, 5, -9.0933>, 1.0000 }
cylinder { <3.5912, 0, -9.8668>, <3.5912, 5, -9.8668>, 1.0000 }
cylinder { <1.8233, 0, -10.3405>, <1.8233, 5, -10.3405>, 1.0000 }
cylinder { <0.0000, 0, -10.5000>, <0.0000, 5, -10.5000>, 1.0000 }
cylinder { <-1.8233, 0, -10.3405>, <-1.8233, 5, -10.3405>, 1.0000 }
cylinder { <-3.5912, 0, -9.8668>, <-3.5912, 5, -9.8668>, 1.0000 }
cylinder { <-5.2500, 0, -9.0933>, <-5.2500, 5, -9.0933>, 1.0000 }
cylinder { <-6.7493, 0, -8.0435>, <-6.7493, 5, -8.0435>, 1.0000 }
cylinder { <-8.0435, 0, -6.7493>, <-8.0435, 5, -6.7493>, 1.0000 }
cylinder { <-9.0933, 0, -5.2500>, <-9.0933, 5, -5.2500>, 1.0000 }
cylinder { <-9.8668, 0, -3.5912>, <-9.8668, 5, -3.5912>, 1.0000 }
cylinder { <-10.3405, 0, -1.8233>, <-10.3405, 5, -1.8233>, 1.0000 }
cylinder { <-10.5000, 0, -0.0000>, <-10.5000, 5, -0.0000>, 1.0000 }
cylinder { <-10.3405, 0, 1.8233>, <-10.3405, 5, 1.8233>, 1.0000 }
cylinder { <-9.8668, 0, 3.5912>, <-9.8668, 5, 3.5912>, 1.0000 }
cylinder { <-9.0933, 0, 5.2500>, <-9.0933, 5, 5.2500>, 1.0000 }
cylinder { <-8.0435, 0, 6.7493>, <-8.0435, 5, 6.7493>, 1.0000 }
cylinder { <-6.7493, 0, 8.0435>, <-6.7493, 5, 8.0435>, 1.0000 }
cylinder { <-5.2500, 0, 9.0933>, <-5.2500, 5, 9.0933>, 1.0000 }
cylinder { <-3.5912, 0, 9.8668>, <-3.5912, 5, 9.8668>, 1.0000 }
cylinder { <-1.8233, 0, 10.3405>, <-1.8233, 5, 10.3405>, 1.0000 }
cylinder { <-0.0000, 0, 10.5000>, <-0.0000, 5, 10.5000>, 1.0000 }
}
#declare Torus_1 = union {
disc { <0, 1.5, 0>, <0, 1, 0>, 11 }
torus { 11, 1.5 }
disc { <0, -1.5, 0>, <0, 1, 0>, 11 }
}
#declare Torus_2 = union {
disc { <0, 1, 0>, <0, 1, 0>, 13}
torus { 13, 1 }
disc { <0, -1, 0>, <0, 1, 0>, 13}
}
#declare Torus_3 = union {
disc { <0, 2.5, 0>, <0, 1, 0>, 12.5 }
torus { 12.5, 2.5 }
disc { <0, -2.5, 0>, <0, 1, 0>, 12.5}
}

#declare Pedestal =
union {
        object {
                box { <-15, 0, -15>, <15, 5, 15> }
                texture { CJFAlabaster }
                }
        object {
                Torus_2
                texture {
                        pigment { Brass }
                        finish {
                                specular 0.6
                                ambient 0.3
                                diffuse 0.8
                                }
                        }
                translate <0, 6, 0>
                }
        object {
                Torus_1
                texture { CJFAlabaster }
                translate <0, 8.5, 0>
                }
        object {
                Middle
                texture { CJFAlabaster }
                translate <0, 10, 0>
                }
        object {
                Torus_1
                texture { CJFAlabaster }
                translate <0, 16.5, 0>
                }
        }
