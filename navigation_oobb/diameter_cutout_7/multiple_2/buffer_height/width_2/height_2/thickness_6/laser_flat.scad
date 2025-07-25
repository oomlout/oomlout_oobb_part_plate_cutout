$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-9.5000000000, 9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [9.5000000000, 9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [-9.5000000000, -9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [9.5000000000, -9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
						}
					}
					union() {
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-6.0000000000, 0, 0]) {
							cylinder(h = 6, r = 3.5000000000);
						}
						#translate(v = [6.0000000000, 0, 0]) {
							cylinder(h = 6, r = 3.5000000000);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 39, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-9.5000000000, 9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [9.5000000000, 9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [-9.5000000000, -9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [9.5000000000, -9.5000000000, 0]) {
								cylinder(h = 6, r = 5);
							}
						}
					}
					union() {
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, 7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [0.0000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [7.5000000000, -7.5000000000, 0]) {
							cylinder(h = 6, r = 1.5000000000);
						}
						#translate(v = [-6.0000000000, 0, 0]) {
							cylinder(h = 6, r = 3.5000000000);
						}
						#translate(v = [6.0000000000, 0, 0]) {
							cylinder(h = 6, r = 3.5000000000);
						}
					}
				}
			}
		}
	}
}