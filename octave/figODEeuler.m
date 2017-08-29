clear;
clf;

f=@(x,y) x-y;
h=0.1;
x(1)=0;
y(1)=0;

for i=1:10;
x(i+1)=x(i)+h;
y(i+1)=y(i)+h*f(x(i),y(i));
endfor

#keuler=rot90((x,y),-1);

#keuler=[x,y];
keuler=rot90([x,y],-1);
kkk=fopen("figODEeuler.txt","w");

for i=1:10;
fdisp(kkk,[x(i),y(i)]);
endfor

fclose(kkk);

keuler
