clf;
tx=linspace(0,360,40);
ty=linspace(0,130,20);
[xx,yy]=meshgrid(tx,ty);
tz=sqrt((sin(xx).*cosh(pi/180*yy)).^2+(cos(xx).*sinh(pi/180*yy)).^2);
mesh(tx,ty,tz);
hold on;
meshc(tx,ty,tz);