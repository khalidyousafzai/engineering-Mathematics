clf;
colormap(cool(64));
tx=linspace(0,360,20);
ty=linspace(0,160,40);
[xx,yy]=meshgrid(tx,ty);
tz=sqrt((sin(xx).*cosh(pi/180*yy)).^2+(cos(xx).*sinh(pi/180*yy)).^2);
contour3(tx,ty,tz);
