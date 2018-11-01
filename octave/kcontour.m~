clear;
clf;
[theta, r] = meshgrid (linspace (0,2*pi,64), linspace (0,1,64));
[X,Y]=pol2cart(theta,r);
Z=1/2-4/pi^2*(r.*cos(theta)+r.^3/3^2.*cos(3.*theta)+r.^5/5^2.*cos(5.*theta));
contour(X,Y,abs(Z),10);

hold on;

t = linspace(0,2*pi,100); 
circsx = 1.*cos(t) ; 
circsy = 1.*sin(t); 
plot(circsx,circsy); 

axis("square", "off", [-1.1 1.1 -1.1 1.1]);

print  -dpdflatexstandalone kcontour.pdf
