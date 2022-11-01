syms theta1 theta2 theta3 theta4 phi 
%theta1 = 0 , theta2 =0 ,theta3 =0,theta4 =0
%phi = atan(0.128/0.024)
A01 = [
cos(theta1) 0 sin(theta1) 0;
sin(theta1) 0 -cos(theta1) 0;
0 1 0 0.077;
0 0 0 1;
];
A12 = [
cos(theta2+phi) -sin(theta2+phi) 0 0.13*cos(theta2+phi);
sin(theta2+phi) cos(theta2+phi) 0 0.13*sin(theta2+phi);
0 0 1 0;
0 0 0 1;
];
A23 = [
cos(theta3-phi) -sin(theta3-phi) 0 0.124*cos(theta3-phi);
sin(theta3-phi) cos(theta3-phi) 0 0.124*sin(theta3-phi);
0 0 1 0;
0 0 0 1;
];
A34 = [
cos(theta4) -sin(theta4) 0 0.126*cos(theta4);
sin(theta4) cos(theta4) 0 0.126*sin(theta4);
0 0 1 0;
0 0 0 1;
];
T04 = simplify(A01 *A12 *A23 *A34)
%T04 = (A01 *A12 *A23 *A34)


