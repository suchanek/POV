#declare shiny_gold = texture {pigment { BrightGold } finish { Metal } }
#declare _redmetal = texture {pigment {color Orange} finish {Metal}}
#declare _bluemetal = texture {pigment {color LightBlue} finish {Metal}}

#declare ring = object {
  // torus {MAJOR, MINOR} // (in the X-Z plane)
// MAJOR = float value giving the major radius
// MINOR = float specifying the minor radius
// The major radius extends from the center of the hole
// to the mid-line of the rim while the minor radius
// is the radius of the cross-section of the rim.
torus
{  .99,  0.02} //.017
  texture {_bluemetal}
  rotate x*90 }


#declare logo_plane = object {
 plane
 {
  z, -.01
  texture
  {
    pigment
    {
      image_map
      {
        tga "hclogo.tga"
        interpolate 2 // smooth it
        once   // don't tile image, just one copy
 //       filter 0 0.8  // make 1st color mostly transparent
 //       filter 1 0.8  // make 2nd color mostly transparent
      }
      // transform it to unit-size (-1 to +1)
      translate -0.5*(x+y) // center on the origin
      scale 2              // make it unit-sized
    }
    finish {Shiny}
  }
 }
}

#declare logo_disk = object {
  union{
     intersection {
         object {logo_plane}
         cylinder { 0*z,-.02*z,1 open}
     }

    object {ring}
  }
//  rotate x * 90  // now oriented with Y up.
  scale 30
 }

