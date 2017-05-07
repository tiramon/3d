width = 6.7;
//overall length
length = 69.0;
//distance between the 2 parts of the vent
thickness = 6.7;

//part that is inside the vent of the car
insideHold= 35;

//space left on each side 
left = 2;

//angle of the part glued to the holder later
holderAngle = 18;
union() {
    rotate([0,0,holderAngle]) union() {
        translate([thickness * -0.5,-2,0]) cube([thickness*2,2, width]);
        translate([(thickness-1.8)/2,-4,(width -4.8)/2]) cube([1.8, 2,4.8]);
    }
    translate([thickness * -0.5,length-insideHold,0]) cube([thickness*2,2, width]);
    intersection() {
        rotate([0,0,holderAngle]) cube([thickness*5, length * 2, width]);
        translate([thickness/2,length/2,width/2]) difference() {
            cube([thickness, length, width], true);
            cube([thickness-left-left, length, width], true);
        };
    }
}