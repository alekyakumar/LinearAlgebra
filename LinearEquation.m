clc
clear all
a = [ 1 1 cosd(37) 0 0 0 0 0;
      0 0 sind(37) 1 0 0 0 0; 
      0 0 -sind(53) 1 -sind(53) 0 0 0;
      0 0 -cosd(53) 0 -cosd(53) 1 0 0;
      0 0 0 0 0 -1 1 0;
      0 -1 0 0 0 0 0 1;
      0 0 0 0 -cosd(37) 0 0 -1; 
      0 0 0 0 sind(37) 0 0 0]
  b = [0;0;0;0;0;0;0;1]
  [L,U] = lu(a);
  d = L\b;
disp(d);
x = U\d;
disp(x);

  