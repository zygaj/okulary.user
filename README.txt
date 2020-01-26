Program obslugi okularow z 2 diodami rgb.
Program w matlabie. Pokaz mozliwosci w pliku: start.m
Okulary wykonane w oparciu o uklad MSP430F5529. Wsad mikrokontrolera w pliku a.out
Program umozliwia zadanie czestotliwosci strobowania swiatla od poj. Hz do ok 1kHz, precyzja +-0.01 Hz (dla przedzialu <1.00;50.00> Hz )
Dodatkowo osobno mozna zadawac kolory na lewe i prawe oko.
Dostepne kolory to: czerwony, zielony i niebieski.
Okulary moga byc sterowane w fazie - obie diody zapalaja sie i gasna w tym samym czasie, lub w przeciwfazie.
Dla systemu MACOSX wczesniej nalezy zainstalowac driver, ktory znajduje sie w katalogu macos. Dodatkowe informacje w pliku info.txt.
Program dziala rowniez pod linuxem (nie sa wymagane dodatkowe sterowniki) oraz pod Windowsem, gdzie nalezy ustawic jedynie poprawny port szeregowy COM, w pliku: inicjujokulary.m
