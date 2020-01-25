close all;
clc;
clear all;
format long


s = serialport('/dev/ttyACM1', 115200);

f=50
%f=1000
fr=ustawgenokf(s,f)

%syg2faza(s,'n')

%pause(10)
%end
