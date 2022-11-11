syms theta1 theta2 theta3 theta4 phi a2 a3 a4 d1;
%theta1 = 0 , theta2 =0 ,theta3 =0,theta4 =0
%phi = atan(0.128/0.024)
% A01 = [
% cos(theta1) 0 sin(theta1) 0;
% sin(theta1) 0 -cos(theta1) 0;
% 0 1 0 0.077;
% 0 0 0 1;
% ];
% A12 = [
% cos(theta2+phi) -sin(theta2+phi) 0 0.13*cos(theta2+phi);
% sin(theta2+phi) cos(theta2+phi) 0 0.13*sin(theta2+phi);
% 0 0 1 0;
% 0 0 0 1;
% ];
% A23 = [
% cos(theta3-phi) -sin(theta3-phi) 0 0.124*cos(theta3-phi);
% sin(theta3-phi) cos(theta3-phi) 0 0.124*sin(theta3-phi);
% 0 0 1 0;
% 0 0 0 1;
% ];
% A34 = [
% cos(theta4) -sin(theta4) 0 0.126*cos(theta4);
% sin(theta4) cos(theta4) 0 0.126*sin(theta4);
% 0 0 1 0;
% 0 0 0 1;
% ];

A01 = [
cos(theta1) 0 sin(theta1) 0;
sin(theta1) 0 -cos(theta1) 0;
0 1 0 d1;
0 0 0 1;
];



A12 = [
cos(theta2+phi) -sin(theta2+phi) 0 a2*cos(theta2+phi);
sin(theta2+phi) cos(theta2+phi) 0 a2*sin(theta2+phi);
0 0 1 0;
0 0 0 1;
];

A23 = [
cos(theta3-phi) -sin(theta3-phi) 0 a3*cos(theta3-phi);
sin(theta3-phi) cos(theta3-phi) 0 a3*sin(theta3-phi);
0 0 1 0;
0 0 0 1;
];

A34 = [
cos(theta4) -sin(theta4) 0 a4*cos(theta4);
sin(theta4) cos(theta4) 0 a4*sin(theta4);
0 0 1 0;
0 0 0 1;
];

T01 = simplify(A01)
T02 = simplify(A01 * A12)
T03 = simplify(A01 * A12 * A23)
T04 = simplify(A01 *A12 *A23 *A34)

z0 = [0; 0; 1];
p0 = [0;0;0];

z1 = T01(1:3,3);
p1 = T01(1:3,4);

z2 = T02(1:3,3);
p2 = T02(1:3,4);

z3 = T03(1:3,3);
p3 = T03(1:3,4);

z4 = T04(1:3,3);
p4 = T04(1:3,4);
syms J;
J(1:3,1) = Matrix_S(z0,(p4-p0))
J(1:3,2) = Matrix_S(z1,(p4-p1))
J(1:3,3) = Matrix_S(z2,(p4-p2))
J(1:3,4) = Matrix_S(z3,(p4-p3))

J(4:6,1) = z0;
J(4:6,2) = z1;
J(4:6,3) = z2;
J(4:6,4) = z3;

J_res=simplify(J)
J_tempt = det(simplify((J_res'*J_res)^-1 * J_res'))
% A =[1 1 1 0; 5 6 7 8; 10 11 12 13; 15 15 16 17];
% z = A(1:3,3)



%T04 = (A01 *A12 *A23 *A34)


