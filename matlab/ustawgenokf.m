function fr=ustawgenokf(s,f)

if f<=0
    disp('nalezy zwikeszyc f - operacja przerwana')
    fr=0;
    return;
end

korprze=1;%3;
lomin=100;
lomax=65535;
himax=lomax;
pclk=2000000;%korekty czestotliwosci rezonatora

pdz=pclk/f;
%lo=lomin:lomax;%preferuje duze wartosci starszego dzielnika
lo=lomax:-1:lomin;%preferuje duze wartosci mlodszego dzielnika

hi=pdz./lo;
N=length(hi);
hi=hi(hi<himax);
N=length(hi);
lo=lo(end-N+1:end);

hic=round(hi);
dhi=abs(hi-hic);
[dhio,k]=min(dhi);

hio=hic(k(end));
loo=lo(k(end));
fr=pclk/(hio*loo);
loo=loo-korprze;

shi=int2str5(hio);
slo=int2str5(loo);

%ustawienie generatora
write(s,uint8('b'),"uint8");
%hi
write(s,uint8(shi(1)),"uint8");
write(s,uint8(shi(2)),"uint8");
write(s,uint8(shi(3)),"uint8");
write(s,uint8(shi(4)),"uint8");
write(s,uint8(shi(5)),"uint8");
%x
%odp=read(s,1,"uint8");
%lo
write(s,uint8(slo(1)),"uint8");
write(s,uint8(slo(2)),"uint8");
write(s,uint8(slo(3)),"uint8");
write(s,uint8(slo(4)),"uint8");
write(s,uint8(slo(5)),"uint8");

odp=read(s,18,"uint8");
disp('nastawa licznika:')
disp(char(odp))
disp(hio*loo)
