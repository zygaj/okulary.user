%program demo do okularow 'RGB stroboskop'

close all;
clear all;
format long;
clc;

f=30
kolor='b'
fazazgodna='n'


s=inicjujokulary();

kolorokulary(s,kolor);

fr=czestfazaokulary(s,f,fazazgodna)

