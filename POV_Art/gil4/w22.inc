// Persistence of Vision Raytracer Version 1.0
//-------------- planet 22             .....miller 3/24/92
#version 2

#declare gold2 =
texture {
	0.02
	ambient 0.3
	diffuse 0.5
	colour red 0.64 green 0.51 blue 0.05
	reflection 0.6
	brilliance 8
	specular 0.5
}


//----------- light blue to midnight blue
#declare n1 = texture {
gradient <0 1 0>
colour_map {
   [0.000 0.308   colour red  0.722  green  0.722  blue  0.992  filter  0.000
                  colour red  0.333  green  0.333  blue  0.584  filter  0.000]
   [0.308 0.992   colour red  0.333  green  0.333  blue  0.584  filter  0.000
                  colour red  0.016  green  0.016  blue  0.231  filter  0.000]
   [0.992 1.001   colour red  0.016  green  0.016  blue  0.231  filter  0.000
                  colour red  0.722  green  0.722  blue  0.992  filter  0.000]
}
}

//-------------- clear - light blue - white
#declare n2 = texture {
turbulence 0.8
bozo
colour_map {
   [0.000 0.252   colour red  0.722  green  0.722  blue  0.992  filter  0.890
                  colour red  0.333  green  0.333  blue  0.584  filter  0.859]
   [0.252 0.798   colour red  0.333  green  0.333  blue  0.584  filter  0.859
                  colour red  0.918  green  0.922  blue  0.929  filter  0.000]
   [0.798 0.992   colour red  0.918  green  0.922  blue  0.929  filter  0.000
                  colour red  0.529  green  0.522  blue  0.733  filter  0.243]
   [0.992 1.001   colour red  0.529  green  0.522  blue  0.733  filter  0.243
                  colour red  0.722  green  0.722  blue  0.992  filter  0.890]
}
}

//-------------- clear - light blue - white
#declare n2x = texture {
turbulence 0.8
bozo
colour_map {
   [0.000 0.252   colour red  0.722  green  0.722  blue  0.992  filter  0.890
                  colour red  0.333  green  0.333  blue  0.584  filter  0.859]
   [0.252 0.798   colour red  0.333  green  0.333  blue  0.584  filter  0.859
                  colour red  0.918  green  0.922  blue  0.929  filter  0.22]
   [0.798 0.992   colour red  0.918  green  0.922  blue  0.929  filter  0.229
                  colour red  0.529  green  0.522  blue  0.733  filter  0.243]
   [0.992 1.001   colour red  0.529  green  0.522  blue  0.733  filter  0.243
                  colour red  0.722  green  0.722  blue  0.992  filter  0.890]
}
}





//----------light blues & light clears alternating
#declare n3 = texture {
gradient <0 1 0>
colour_map {
   [0.000 0.155   colour red  0.996  green  0.980  blue  0.761  filter  0.580
                  colour red  0.722  green  0.722  blue  0.992  filter  0.635]
   [0.155 0.517   colour red  0.722  green  0.722  blue  0.992  filter  0.635
                  colour red  0.996  green  0.980  blue  0.761  filter  0.675]
   [0.517 0.638   colour red  0.996  green  0.980  blue  0.761  filter  0.675
                  colour red  0.875  green  0.875  blue  1.000  filter  0.659]
   [0.638 0.750   colour red  0.875  green  0.875  blue  1.000  filter  0.659
                  colour red  0.722  green  0.722  blue  0.992  filter  0.702]
   [0.750 0.871   colour red  0.722  green  0.722  blue  0.992  filter  0.702
                  colour red  0.357  green  0.357  blue  0.702  filter  0.647]
   [0.871 0.983   colour red  0.357  green  0.357  blue  0.702  filter  0.647
                  colour red  0.345  green  0.345  blue  0.537  filter  0.675]
   [0.983 1.001   colour red  0.345  green  0.345  blue  0.537  filter  0.675
                  colour red  0.996  green  0.980  blue  0.761  filter  0.580]
}
}


#declare n11 = texture {
gradient <0 1 0>
color_map {
[0.0 0.3 color Black color Violet]
[0.3 0.5 color Violet color Violet filter 0.4]
[0.5 1.01 color Violet filter 0.4 color Violet filter 1.0]
}
}


#declare nimrod =
texture {
	n1 ambient 1 diffuse 0 scale <1 2 1> rotate <0 0 180> translate <0 0 0> }
	texture { n2x ambient 1 diffuse 0 translate <1 0 0> }
	texture { n11 ambient 1 diffuse 0 scale <1 2 1> translate <0 1.6 0> }
	texture { n2 ambient 1 diffuse 0 scale <2 0.5 1> translate <0 -1 0> }





/*-------The World in Front-----------*/
#declare W22 =
object { quadric { Sphere inverse hollow}
	texture { nimrod
	}
	scale <2000 1000 5000>
    hollow
}



/*-------- The World in Back ---------*/
#declare W44 =
object { quadric { Sphere inverse hollow}
	texture {
	gradient <0 1 0>
		color_map {
		[0.0 0.3 color Scarlet color Scarlet]
		[0.3 0.5 color Scarlet color Violet ]
		[0.5 0.7 color Violet color MidnightBlue]
		[0.7 0.8 color MidnightBlue color Black]
		[0.8 1.0 color Black color Black ]
		}
	ambient 1
	diffuse 0
	scale <1 2 1>
	translate <0 -1 0>
	}
	scale <2000 1000 5000> translate <0 0 100>
    hollow
}







//----------- liquid love lake
#declare LAKE =
object {
	plane { <0 1 0> 0 }
		texture {
		color red 0.0 green 0.07 blue 0.0
		reflection 0.85
		ambient 0.15
		ripples 0.1
		frequency 0.08
		diffuse 0.6
		phong 1.0 phong_size 80
		}
}

#declare LAKE2 =
object {
	plane { <0 1 0> 0 }
		texture {
		color red 0.0 green 0.07 blue 0.0
		reflection 0.85
		ambient 0.15
		ripples 0.1
		frequency 0.08
		diffuse 0.6
		phong 1.0 phong_size 80
		}
}





