function [p1,p2,dp1,dp2] = autoGen_cartPoleKinematics(x,q,dx,dq,l,empty)
%AUTOGEN_CARTPOLEKINEMATICS
%    [P1,P2,DP1,DP2] = AUTOGEN_CARTPOLEKINEMATICS(X,Q,DX,DQ,L,EMPTY)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    31-Mar-2018 12:24:50

p1 = [x;empty];
if nargout > 1
    t2 = cos(q);
    t3 = sin(q);
    p2 = [x+l.*t3;-l.*t2];
end
if nargout > 2
    dp1 = [dx;empty];
end
if nargout > 3
    dp2 = [dx+dq.*l.*t2;dq.*l.*t3];
end