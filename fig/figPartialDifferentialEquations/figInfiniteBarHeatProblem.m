#infinite rod temperature's tables

clear
clf

u=@(x,t) 100/2*(erf((1-x)./(2*1.*sqrt(t)))+erf((1+x)./(2*1.*sqrt(t))));

i=-30:30;
plot(i/10,u(i/30,1/8));
#=============================

##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-30:30;
kMag=rot90([u(i/10,1/8);i/10],-1);

kkk=fopen("figPartialDifferentialInfiniteRodT1.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============
##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-30:30;
kMag=rot90([u(i/10,1/2);i/10],-1);

kkk=fopen("figPartialDifferentialInfiniteRodT2.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============

##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-30:30;
kMag=rot90([u(i/10,1);i/10],-1);

kkk=fopen("figPartialDifferentialInfiniteRodT3.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============
##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-30:30;
kMag=rot90([u(i/10,2);i/10],-1);

kkk=fopen("figPartialDifferentialInfiniteRodT4.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============
##concatenate the two matrices, rotate clockwise 90 degrees and then save as text file
i=-30:30;
kMag=rot90([u(i/10,8);i/10],-1);

kkk=fopen("figPartialDifferentialInfiniteRodT5.dat","w");
fdisp(kkk,kMag)
fclose(kkk);
##==============

