
x=linspace(-2,2,40);
y=1/2;
z=@(x,y)x+i.*y;
w=@(x,y) 1./z(x,y);
u=real(w(x,y));
u=real(w(x,y));
v=imag(w(x,y));

plot(u,v);

[xx, yy] = meshgrid (x, t);
r = sqrt (xx .^ 2 + yy .^ 2) + eps;
tz = sin (r) ./ r;
mesh (u, v);

#meshc (tx,ty,tz);
