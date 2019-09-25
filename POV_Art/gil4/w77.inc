//------ Back Sky



#declare Zenith = colour MidnightBlue
#declare MidSky = color Black
#declare HighHorizon = colour red 0.83 green 0.83 blue 0.98
#declare GroundColor = colour ForestGreen
#declare Rose = colour red 0.96 green 0.59 blue 0.66
#declare LowHorizon = colour Rose

#declare Clouds1 = texture {
      turbulence 0.8
      bozo
      colour_map {
          /* transparent to transparent */
          [0.0 0.6   colour red 1.0 green 1.0 blue 1.0 filter 1.0
                     colour red 1.0 green 1.0 blue 1.0 filter 1.0]
          /* transparent to rose */
          [0.6 0.8   colour Rose filter 1.0 colour Rose]
          /* rose to gray */
          [0.8 1.001 colour Rose colour DimGray ]
      }
      scale <1  0.5  1>
}


/* -----------------Sky sphere------------------------------------- */


#declare W77 =
object {
    quadric { Sphere hollow}
        texture {
        gradient <0 1 0>
        color_map {
            [0.0 0.10 color LowHorizon color HighHorizon]
            [0.10 0.15 color HighHorizon color HighHorizon]
            [0.15 0.70 color HighHorizon color MidSky]
            [0.70 0.95 color MidSky color Zenith]
            [0.95 1.01 color Zenith color LowHorizon]

                    }
        ambient 1 diffuse 0 scale <1 0.5 1> translate <0 0 0>

    }
    texture { Clouds1 scale <.001 .001 .001>  rotate <0 0 0> }
scale <1950 995 5000>	translate <0 0 200>

}
