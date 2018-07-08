diffBessel=@(x) 0.5.*(besselj(0,x)-besselj(2,x));

#=========

kread=fopen("figOctaveBesselFunctionFirstKind.dat","w");

for x=[-13.5:0.1:13.5];
fprintf(kread,"%i %s %i",x,"    ",besselj(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

