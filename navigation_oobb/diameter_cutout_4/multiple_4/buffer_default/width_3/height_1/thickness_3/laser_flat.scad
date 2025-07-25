$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-17.0000000000, 2.0000000000, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [17.0000000000, 2.0000000000, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [-17.0000000000, -2.0000000000, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [17.0000000000, -2.0000000000, 0]) {
								cylinder(h = 3, r = 5);
							}
						}
					}
					union() {
						#translate(v = [-15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [-15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [-13.5000000000, 0, 0]) {
							cylinder(h = 3, r = 2.0000000000);
						}
						#translate(v = [-4.5000000000, 0, 0]) {
							cylinder(h = 3, r = 2.0000000000);
						}
						#translate(v = [4.5000000000, 0, 0]) {
							cylinder(h = 3, r = 2.0000000000);
						}
						#translate(v = [13.5000000000, 0, 0]) {
							cylinder(h = 3, r = 2.0000000000);
						}
					}
				}
			}
		}
	}
}