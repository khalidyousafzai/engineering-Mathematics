clf;
hold on;
rr=linspace(1.01,1.01,100);
tt=linspace(0,2*pi,100);
polar(tt,rr);

K=6*pi;
c=-10;
r=linspace(1.1,3,100000);
t=asin((c+K*log(r))./(2*pi*(r-1./r)));
polar(t,r);
polar(pi-t,r);


r=1:0.001:4;

kninety=rot90([asin((c+K*log(r))./(2*pi*(r-1./r)));r],-1);

kkk=fopen("vortex.txt","w");
fdisp(kkk,kninety)
fclose(kkk);
