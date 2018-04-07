function [A,B] = autoGen_quadrotorPendulumLinDyn(q1,q2,dq2,u1,u2,uq,m1,w,m2,l)
%AUTOGEN_QUADROTORPENDULUMLINDYN
%    [A,B] = AUTOGEN_QUADROTORPENDULUMLINDYN(Q1,Q2,DQ2,U1,U2,UQ,M1,W,M2,L)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    07-Apr-2018 12:42:38

t2 = cos(q1);
t3 = 1.0./l;
t4 = m1+m2;
t5 = 1.0./t4;
t6 = sin(q2);
t7 = sin(q1);
t8 = cos(q2);
t9 = dq2.^2;
t10 = l.^2;
A = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t3.*t5.*(l.*t2.*u1.*2.0+l.*t2.*u2.*2.0).*(-1.0./2.0),t3.*t5.*(l.*t7.*u1.*2.0+l.*t7.*u2.*2.0).*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,t3.*t5.*(t6.*uq.*3.0+m2.*t8.*t9.*t10).*(1.0./2.0),t3.*t5.*(t8.*uq.*3.0-m2.*t6.*t9.*t10).*(-1.0./2.0),0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,dq2.*l.*m2.*t5.*t6,-dq2.*l.*m2.*t5.*t8,0.0,0.0],[8,8]);
if nargout > 1
    t11 = t2.*t5;
    t12 = 1.0./m1;
    t13 = 1.0./w;
    t14 = t12.*t13.*6.0;
    B = reshape([0.0,0.0,0.0,0.0,-t5.*t7,t11,t14,0.0,0.0,0.0,0.0,0.0,-t5.*t7,t11,-t14,0.0,0.0,0.0,0.0,0.0,t3.*t5.*t8.*(-3.0./2.0),t3.*t5.*t6.*(-3.0./2.0),t12.*1.0./w.^2.*-1.2e1,(1.0./l.^2.*3.0)./m2,0.0,0.0,0.0,0.0,t5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t5,0.0,0.0],[8,5]);
end