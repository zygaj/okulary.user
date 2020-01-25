function [p1,p2,p3]=czytajpot(s)

%odczyt potencjometrow
write(s,uint8('a'),"uint8");
dana = read(s,16,"uint8");
str=char(dana);
%disp(str);
p3=str2num([str(1) str(2) str(3) str(4)]);
p2=str2num([str(6) str(7) str(8) str(9)]);
p1=str2num([str(11) str(12) str(13) str(14)]);