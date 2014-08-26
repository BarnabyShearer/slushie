$fn=60;

T=3;
H=12;
A=5;
B1=8;
L=8.2;
D=1.65;
B=1.3;
S=0.8;
Thruhole=1.3;

hull() {
	cube([
		B1,
		S,
		(H-T)/4*3
	]);
	translate([
		B1/3,
		0,
		0
	]) cube([
		B1/3*2,
		S,
		H-T
	]);
}
	
translate([
	B1,
	0,
	H-T-6.3
]) difference() {
	hull() {
		cube([
			L-S,
			S,
			6.3
		]);
		translate([
			L-S,
			S/2,
			S
		]) cube([
			S,
			.001,
			6.3-2*S
		]);
	}
	translate([
		L/2,
		-.1,
		6.3/2
	]) rotate([-90,0,0]) cylinder(d=Thruhole, h=S+.2);
}

translate([
	B1/2 - A/2,
	0,
	-T+B/2
]) {
	translate([-B/2, 0, 0]) cube([B,S,T]);
	rotate([-90,0,0]) cylinder(d=B, h=S);
}


translate([
	B1/2 + A/2,
	0,
	-T+B/2
]) {
	translate([-B/2, 0, 0]) cube([B,S,T]);
	rotate([-90,0,0]) cylinder(d=B, h=S);
}
	