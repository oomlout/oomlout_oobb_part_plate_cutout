$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [-17.0000000000, 9.5000000000, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [17.0000000000, 9.5000000000, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-17.0000000000, -9.5000000000, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [17.0000000000, -9.5000000000, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		#translate(v = [-15.0000000000, -7.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [-15.0000000000, 7.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [15.0000000000, -7.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [15.0000000000, 7.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [-9.5000000000, 0, 0]) {
			cylinder(h = 3, r = 7.0000000000);
		}
		#translate(v = [9.5000000000, 0, 0]) {
			cylinder(h = 3, r = 7.0000000000);
		}
	}
}