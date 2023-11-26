
$fn = 24;


// switch base
module switch_base(){
	translate([0,0,-1])
	cube([36,42,4.01],center = true);
	translate([0,0,(11/2)+1])
	cube([36,24,11],center = true);
}

difference(){
	cube([40,46,4], center=true);
	translate([0,0,1])
	switch_base();
}

//color("red") import("Cotech.stl");

module clip(){
	color("blue")
	translate([-17.7,0,2.6])
	rotate([0,30,0])
	cube([1.5,17,6.3], center=true);
}
translate([0,0,0])
clip();
rotate([0,0,180])
clip();


translate([0,0,(16/2)-2])
difference(){
	minkowski(){
		cube([78,78,15],center=true);
		cylinder(1,center=true);
	}
	cube([42,46,16.01],center=true);
	translate([11,34,(16/2)-2])
	cylinder(h=19,r=(2.5/2),center=true);
	rotate([0,0,180])
	translate([11,34,(16/2)-2])
	cylinder(h=19,r=(2.5/2),center=true);
}

//translate([11,34,(16/2)-2]) cylinder(h=16,r=(2.5/2),center=true);