//
// these declarations will sweep the camera along a circular
// path from +half_ang degrees to -half_ang degrees as the
// clock varies from 0 -> 1. The camera remains pointed at the
// origin.

#declare rad = 31.0;              // 31 units in radius for the sweep
#declare half_ang = 6.0;          // total of 12 degree sweep  (was 12)
#declare slope = -2.0 * half_ang; // change in -12 degrees over the range.
#declare ypos = 6;
#declare slope = -2.0 * half_ang; // change in -12 degrees over the range.
#declare initial_ang = 0.0;
#declare cpoint_at = <0,0,0>;

#declare theta = clock * slope + half_ang + initial_ang;     // equation for theta as a fxn of clock
#declare zpos = -rad * cos ((theta / 57.295));  // convert to radians, compute z
#declare xpos = rad * sin ((theta / 57.295));  // convert to radians, compute x


#declare camera_lenticular = camera {
location < xpos, ypos, zpos >
   right <ASPECT, 0, 0>
   look_at cpoint_at
   // angle 50
}

