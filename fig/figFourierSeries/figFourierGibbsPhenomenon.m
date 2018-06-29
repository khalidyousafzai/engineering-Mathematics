#sine integral (integral of sinc function) and sinc function tables

clear
clf

function q=g(x)
q=ones (size (x));
for i=1:length(x)
f=@(w)sin(w).*cos(w.*x(i))./w;
q(i)=quadgk(f,0,4);
endfor
endfunction

i=-30:30;
plot(i/10,g(i/10))
#=============================

##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-30:30;
kMag=rot90([g(i/10);i/10],-1);

kkk=fopen("figFourierGibbsPhenomenonA4.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============


clear clf

function q=g(x)
q=ones (size (x));
for i=1:length(x)
f=@(w)sin(w).*cos(w.*x(i))./w;
q(i)=quadgk(f,0,8);
endfor
endfunction

i=-300:300;
plot(i/100,g(i/100))
#=============================

##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-300:300;
kMag=rot90([g(i/100);i/100],-1);

kkk=fopen("figFourierGibbsPhenomenonA8.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============

clear all
clf


function q=g(x)
q=ones (size (x));
for i=1:length(x)
f=@(w)sin(w).*cos(w.*x(i))./w;
q(i)=quadgk(f,0,16);
endfor
endfunction

i=-300:300;
plot(i/100,g(i/100))
#=============================

##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-300:300;
kMag=rot90([g(i/100);i/100],-1);

kkk=fopen("figFourierGibbsPhenomenonA16.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============

