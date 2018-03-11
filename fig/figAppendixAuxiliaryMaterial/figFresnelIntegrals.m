clear;
clf;

function y = f (x)
  y = cos(x^2);
endfunction


kkk=fopen("figFresnelCosineIntegral.txt","w");

for i=1:1000;
x=4/1000*i;
[area,ierror,nfneval]=quad("f",0,x);
fdisp(kkk,[x,area]);
endfor

fclose(kkk);


function y = f (x)
  y = sin(x^2);
endfunction


kkk=fopen("figFresnelSineIntegral.txt","w");

for i=1:1000;
x=4/1000*i;
[area,ierror,nfneval]=quad("f",0,x);
fdisp(kkk,[x,area]);
endfor

fclose(kkk);

