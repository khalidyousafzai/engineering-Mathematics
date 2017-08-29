clear;
clf;

f=@(x,y) x-y;
h=0.05;
xmax=0.4/h+1;
x(1)=0;
y(1)=0;

for i=1:xmax;
x(i+1)=x(i)+h;
y(i+1)=y(i)+h*f(x(i),y(i));
endfor

#keuler=rot90((x,y),-1);

#keuler=[x,y];
keuler=rot90([x,y],-1);
kkk=fopen("figODEeulerA.txt","w");

for i=1:xmax;
fdisp(kkk,[x(i),y(i)]);
endfor

fclose(kkk);

#===========================
h=0.1;
xmax=0.4/h+1;
x(1)=0;
y(1)=0;

for i=1:xmax;
x(i+1)=x(i)+h;
y(i+1)=y(i)+h*f(x(i),y(i));
endfor

#keuler=rot90((x,y),-1);

#keuler=[x,y];
keuler=rot90([x,y],-1);
kkk=fopen("figODEeulerB.txt","w");

for i=1:xmax;
fdisp(kkk,[x(i),y(i)]);
endfor

fclose(kkk);

