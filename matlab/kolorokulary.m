function kolorokulary(s,kolorlewy,kolorprawy)
%made by Zyga on 25.01.2020
%ustawienie kolorow okularow "RGB stroboskop"
%parametry r, g lub b dla okularu lewego i prawego
%par. l wylacza swiecenie

if nargin<3
    kolorprawy=kolorlewy;
end

sygright(s,kolorprawy)
sygleft(s,kolorlewy)