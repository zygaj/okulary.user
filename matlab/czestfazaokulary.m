function fr=czestfazaokulary(s,f,fazazgodna)
%made by Zyga on 25.01.2020
%ustawienie czestotliwosci i zgodnosci fazy swiecenia poszczegolnych okularow
%parametry f - zadana czestotliwosc zwrocone fr - rzeczywista nastawa
%parametr fazazgodna= 'n' - nie lub 't' - tak fazy zgodne

fr=ustawgenokf(s,f);
syg2faza(s,fazazgodna);

