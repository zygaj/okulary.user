function sygright(s,kolor)

if kolor=='r'
    write(s,uint8('R'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
elseif kolor=='g'
    write(s,uint8('G'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
elseif kolor=='b'
    write(s,uint8('N'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
else
    write(s,uint8('L'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
end

    
