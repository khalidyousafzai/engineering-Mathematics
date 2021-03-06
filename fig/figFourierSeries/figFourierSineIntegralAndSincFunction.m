#sine integral (integral of sinc function) and sinc function tables

clear
clf

t=-3:0.01:3;

#=============================
##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
kMag=rot90([real(Si(t*pi));t],-1);

kkk=fopen("figFourierSineIntegral.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============

t=-3:0.01:3;
#=============================
##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
kMag=rot90([sinc(t);t],-1);

kkk=fopen("figFourierSinc.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============

plot(t,sinc(t))
