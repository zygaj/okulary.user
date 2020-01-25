function sygleft(s,kolor)

if kolor=='r'
    write(s,uint8('r'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
elseif kolor=='g'
    write(s,uint8('g'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
elseif kolor=='b'
    write(s,uint8('n'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
else
    write(s,uint8('l'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
end

    
