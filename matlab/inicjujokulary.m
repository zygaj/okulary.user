function s=inicjujokulary()
%made by Zyga on 25.01.2020
%inicjalizacja okularow "RGB stroboskop"
%dla roznych systemow operacyjnych 
%ponizej nalezy zweryfikowac ustawienia modemu dla biezacego systemu operacyjnego:
modemMAC='/dev/cu.usbmodem141203';
modemLINUX='/dev/ttyACM1';
modemWIN='COM4';

if ismac
    disp('System MAC OS')
    disp('W przypadku problemow sprawdzic czy zainstalowany driver: MSP430LPCDC 1.0.3b.pkg oraz ewentualnie nazwe modemu /dev/cu.usbmodemXXXXXX')
    disp('Sprawdzam modem na:')
    disp(modemMAC)
    s = serialport(modemMAC, 115200);
elseif isunix
     disp('System Linux')
     disp('Sprawdzam modem na:')
     disp(modemLINUX)
     s = serialport(modemLINUX, 115200);
elseif ispc
     disp('System Windows')
     disp('W razie problemow sprawdzic numer portu COM w menadzerze urzadzen')
     disp('Sprawdzam modem na:')
     disp(modemWIN)
     s = serialport(modemWIN, 115200);
    % Code to run on Windows platform
else
    disp('Platform not supported')
end