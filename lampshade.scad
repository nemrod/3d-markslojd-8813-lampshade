$fs = 0.1;
$fa = 0.1;

wallThickness = 1.5;
radius = wallThickness/2;
width = 100;
totalHeight = 190;
bottomHeight = 150;
topHypotenuse = 140;

rotate_extrude() {
	union() {
		hull() {
			translate([width/2-(totalHeight-bottomHeight)/tan(acos((width/2/topHypotenuse)))+radius, totalHeight, 0]) {
				circle(radius);
			}
			translate([width/2+radius, bottomHeight, 0]) {
				circle(radius);
			}
		}
		hull() {
			translate([width/2+radius, bottomHeight, 0]) {
				circle(radius);
			}
			translate([width/2+radius, 0, 0]) {
				square(radius*2);
			}
		}
	}
}
