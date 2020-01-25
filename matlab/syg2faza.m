function syg2faza(s,zgodna)

if zgodna=='n'
    write(s,uint8('c'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
else
    write(s,uint8('d'),"uint8");
    dana = read(s,16,"uint8");
    str=char(dana);
    disp(str);
end

    
