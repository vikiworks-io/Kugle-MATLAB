function dxdy_com = ForwardKinematics_COM(dpsi1,dpsi2,dpsi3,dq1,dq2,dq3,dq4,l,q1,q2,q3,q4,rk,rw)
%FORWARDKINEMATICS_COM
%    DXDY_COM = FORWARDKINEMATICS_COM(DPSI1,DPSI2,DPSI3,DQ1,DQ2,DQ3,DQ4,L,Q1,Q2,Q3,Q4,RK,RW)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    09-Nov-2018 14:51:24

t2 = sqrt(2.0);
t3 = 1.0./rk;
t4 = dq1.*q3.*2.0;
t5 = dq4.*q2.*2.0;
t6 = dpsi1.*-2.0+dpsi2+dpsi3;
t7 = q1.^2;
t8 = q2.^2;
t9 = q3.^2;
t10 = q4.^2;
t11 = sqrt(6.0);
t12 = dpsi2-dpsi3;
t13 = q1.*q4.*2.0;
t14 = q2.*q3.*2.0;
t15 = dpsi1+dpsi2+dpsi3;
t16 = dq2.*q1.*2.0;
t17 = dq4.*q3.*2.0;
dxdy_com = [-rk.*(t4+t5-dq3.*q1.*2.0-dq2.*q4.*2.0+rw.*t2.*t3.*t15.*(q1.*q2.*2.0-q3.*q4.*2.0).*(1.0./3.0)+rw.*t3.*t11.*t12.*(t7-t8+t9-t10).*(1.0./3.0)-rw.*t2.*t3.*t6.*(t13+t14).*(1.0./3.0))+l.*(t4+t5+dq3.*q1.*2.0+dq2.*q4.*2.0);-rk.*(t16+t17-dq1.*q2.*2.0-dq3.*q4.*2.0+rw.*t2.*t3.*t15.*(q1.*q3.*2.0+q2.*q4.*2.0).*(1.0./3.0)+rw.*t2.*t3.*t6.*(t7+t8-t9-t10).*(1.0./3.0)+rw.*t3.*t11.*t12.*(t13-t14).*(1.0./3.0))-l.*(t16-t17+dq1.*q2.*2.0-dq3.*q4.*2.0)];
