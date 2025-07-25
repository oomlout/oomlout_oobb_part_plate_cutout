$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [-219.5000000000, 54.5000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [219.5000000000, 54.5000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-219.5000000000, -54.5000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [219.5000000000, -54.5000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		#translate(v = [-217.5000000000, -52.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [-217.5000000000, 52.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [217.5000000000, -52.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [217.5000000000, 52.5000000000, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
		#translate(v = [-165.0000000000, 0, 0]) {
			cylinder(h = 9, r = 52.5000000000);
		}
		#translate(v = [-55.0000000000, 0, 0]) {
			cylinder(h = 9, r = 52.5000000000);
		}
		#translate(v = [55.0000000000, 0, 0]) {
			cylinder(h = 9, r = 52.5000000000);
		}
		#translate(v = [165.0000000000, 0, 0]) {
			cylinder(h = 9, r = 52.5000000000);
		}
	}
}