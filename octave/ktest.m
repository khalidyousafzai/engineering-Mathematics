clear;
clf;

f=@(w,c) c.*w./(1-w.^2);
i=0:100;
w=i/50;

kfig=rot90([w,f(w,0.5)],-1);
kkk=fopen("figAtan.txt","w");

fdisp(kkk,kfig);
fclose(kkk);

plot(w,f(w,0.5));
