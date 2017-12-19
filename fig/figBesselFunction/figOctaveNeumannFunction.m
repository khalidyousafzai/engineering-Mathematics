diffBessel=@(x) 0.5.*(besselj(0,x)-besselj(2,x));

#=========

kread=fopen("figOctaveNeumannZeroFunction.dat","w");

for x=[0.1:0.1:10];
fprintf(kread,"%i %s %i",x,"    ",bessely(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

kread=fopen("figOctaveNeumannOneFunction.dat","w");

for x=[0.1:0.1:10];
fprintf(kread,"%i %s %i",x,"    ",bessely(1,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

#=======================



