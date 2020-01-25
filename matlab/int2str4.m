function str=int2str4(dana)

if nargin==0
    dana=8
end

tmp=int2str(dana);
d=length(tmp);
str=tmp;

if d==3
    str=['0' tmp];
end

if d==2
    str=['0' '0' tmp];
end

if d==1
    str=['0' '0' '0' tmp];
end