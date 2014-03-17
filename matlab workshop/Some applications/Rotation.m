%This script helps visualize the rotation matrix

inc = 0.1;
side = -1:inc:1;
O = ones(1,length(side));
mO = -1*O;

right = [O;side];
left = [mO;side];
top = [side;O];
bottom = [side;mO];

square = [top, bottom, left, right];
X = square(1,:);
Y = square(2,:);

plot(X,Y,'b.');axis([-2 2 -2 2]);
title('The Square and Rotation');

%make one degree angle
angle = pi/180* 35;
rotationMatrix = [cos(angle) -sin(angle); sin(angle) cos(angle)];
rotatedSquare = rotationMatrix*square;

for i=1:180
    rotatedSquare = rotationMatrix*rotatedSquare;
    Xt = rotatedSquare(1,:);
    Yt = rotatedSquare(2,:);
    plot(Xt,Yt,'r.');
    title('Rotating in a loop');
    
    hold on;
    pause;
end
