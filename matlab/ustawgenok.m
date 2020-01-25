function ustawgenok(s,hi,lo)

if nargin<1
    s = serialport('/dev/ttyACM0', 9600);
end
if nargin<2
    hi=1000
end
if nargin<3
    lo=8000
end

shi=int2str4(hi);
slo=int2str4(lo);

%ustawienie generatora
write(s,uint8('b'),"uint8");
%hi
write(s,uint8(shi(1)),"uint8");
write(s,uint8(shi(2)),"uint8");
write(s,uint8(shi(3)),"uint8");
write(s,uint8(shi(4)),"uint8");
%x
%odp=read(s,1,"uint8");
%lo
write(s,uint8(slo(1)),"uint8");
write(s,uint8(slo(2)),"uint8");
write(s,uint8(slo(3)),"uint8");
write(s,uint8(slo(4)),"uint8");

odp=read(s,16,"uint8");
disp(char(odp))