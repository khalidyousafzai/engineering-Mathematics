clear;
clf;

x=linspace(0,10,100);
 y=Si(x);

kSineIntegral=rot90([x,y],-1);
kkk=fopen("figSineIntegral.txt","w");

for i=1:100;
fdisp(kkk,[x(i),y(i)]);
endfor

fclose(kkk);

