syms theta1_J theta2_J theta3_J theta4_J phi a2 a3 a4 d1;
%theta1_J = pi;
%theta1_J = 0 , theta2_J =0 ,theta3_J =0,theta4_J =0
%phi = atan(0.128/0.024)
% A01 = [
% cos(theta1_J) 0 sin(theta1_J) 0;
% sin(theta1_J) 0 -cos(theta1_J) 0;
% 0 1 0 0.077;
% 0 0 0 1;
% ];
% A12 = [
% cos(theta2_J+phi) -sin(theta2_J+phi) 0 0.13*cos(theta2_J+phi);
% sin(theta2_J+phi) cos(theta2_J+phi) 0 0.13*sin(theta2_J+phi);
% 0 0 1 0;
% 0 0 0 1;
% ];
% A23 = [
% cos(theta3_J-phi) -sin(theta3_J-phi) 0 0.124*cos(theta3_J-phi);
% sin(theta3_J-phi) cos(theta3_J-phi) 0 0.124*sin(theta3_J-phi);
% 0 0 1 0;
% 0 0 0 1;
% ];
% A34 = [
% cos(theta4_J) -sin(theta4_J) 0 0.126*cos(theta4_J);
% sin(theta4_J) cos(theta4_J) 0 0.126*sin(theta4_J);
% 0 0 1 0;
% 0 0 0 1;
% ];

A01 = [
cos(theta1_J) 0 sin(theta1_J) 0;
sin(theta1_J) 0 -cos(theta1_J) 0;
0 1 0 d1;
0 0 0 1;
];



A12 = [
cos(theta2_J+phi) -sin(theta2_J+phi) 0 a2*cos(theta2_J+phi);
sin(theta2_J+phi) cos(theta2_J+phi) 0 a2*sin(theta2_J+phi);
0 0 1 0;
0 0 0 1;
];

A23 = [
cos(theta3_J-phi) -sin(theta3_J-phi) 0 a3*cos(theta3_J-phi);
sin(theta3_J-phi) cos(theta3_J-phi) 0 a3*sin(theta3_J-phi);
0 0 1 0;
0 0 0 1;
];

A34 = [
cos(theta4_J) -sin(theta4_J) 0 a4*cos(theta4_J);
sin(theta4_J) cos(theta4_J) 0 a4*sin(theta4_J);
0 0 1 0;
0 0 0 1;
];

T01 = simplify(A01);
T02 = simplify(A01 * A12);
T03 = simplify(A01 * A12 * A23);
T04 = simplify(A01 *A12 *A23 *A34);

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
J(1:3,1) = Matrix_S(z0,(p4-p0));
J(1:3,2) = Matrix_S(z1,(p4-p1));
J(1:3,3) = Matrix_S(z2,(p4-p2));
J(1:3,4) = Matrix_S(z3,(p4-p3));

% J(1:3,1) = cross(z0,(p4-p0))
% J(1:3,2) = cross(z1,(p4-p1))
% J(1:3,3) = cross(z2,(p4-p2))
% J(1:3,4) = cross(z3,(p4-p3))


J(4:6,1) = z0;
J(4:6,2) = z1;
J(4:6,3) = z2;
J(4:6,4) = z3;

J_res=simplify(J)
% J_res(5,:) = simplify(J_res(5,:)+J_res(4,:)*cos(theta1_J)/sin(theta1_J)); %sin(theta1_J) # 0
% J_res(1,:) = simplify(J_res(1,:)-J_res(1,1)*J(6,:));
% J_res(2,:) = simplify(J_res(2,:)-J_res(2,1)*J(6,:));
% J_res(1,:) = simplify(J_res(1,:)-J_res(2,:)*cos(theta1_J)/sin(theta1_J));
% J_res(2,:) = simplify(J_res(2,:)-J_res(1,:)*sin(theta1_J)/cos(theta1_J));
% 
% det_J(1:3,:) = J_res(2:4,:);
% det_J(4,:)  = J_res(6,:)
% simplify(det(det_J))
% 
% disp('Suy ra theta3_J = phi thi det = 0') 







