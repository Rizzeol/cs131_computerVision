function [x, y, R] = FitCircle(D)
% FitCircleLeastSquares Fit a circle using at least 3 points.
% Input:
%   D: An N x 2 matrix, where each row is a point in 2D space.
% Output:
%   x, y, R: (x, y) is the center of the fitted circle, R is the radius of
%   the fitted circle
    
    n = size(D, 1);

    if n < 3,
        error('You need at least three points to fit a circle.');
    end
    
    x = 0;
    y = 0;
    R = 1;

    a=D(:,1);
    b=D(:,2);
    c=ones(n,1);
    c=repmat(1,n,1);
    A=[2*a,2*b,c];
    Y=[a.^2+b.^2];
    xyR=A\Y;
    x=xyR(1,:);
    y=xyR(2,:);
    R=xyR(3,:)+x^2+y^2;
    R=sqrt(R);

end