$fn = 50;


difference() {
	union() {
		cylinder(h = 3, r = 7.0000000000);
	}
	union() {
		#translate(v = [0.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [0.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [0.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [0.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#cylinder(h = 3, r = 4.0000000000);
	}
}