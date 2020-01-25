function str=int2str5(dana)

if nargin==0
    dana=65535
end

tmp=int2str(dana);
d=length(tmp);
str=tmp;

if d==4
    str=['0' tmp];
end

if d==3
    str=['0' '0' tmp];
end

if d==2
    str=['0' '0' '0' tmp];
end

if d==1
    str=['0' '0' '0' '0' tmp];
end