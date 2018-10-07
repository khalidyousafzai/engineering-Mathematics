clear;
clf;

pkg load statistics;
format long;

mvncdf(1,0,1);

f=@(x,y) x-y;
h=0.01;
x(1)=0;
y(1)=0.5040;

for i=1:11;
x(i+1)=x(i)+h;
y(i+1)=mvncdf(x(i+1),0,1);
endfor

#keuler=rot90((x,y),-1);

#keuler=[x,y];
kPhi=rot90([x,y],-1);
kkk=fopen("figPHI.txt","w");

for i=1:10;
fdisp(kkk,[x(i),y(i)]);
endfor

fclose(kkk);
i=0.01:0.01:10;
mvncdf(i,0,1);
