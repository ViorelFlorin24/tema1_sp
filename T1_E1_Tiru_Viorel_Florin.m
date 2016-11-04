a=0:0.1:2;%am initiatilizat vectorul a, vector linie,cu elemente de la 0 la 2 cu pasul 0.1
b=ones(21,1);%am initializat vectorul b, vector coloana,cu 21 de elemente pentru a avea loc inmultirea dintre a si b
R1=a*b; %R1 reprezinta rezultatul inmultirii dintre a si b si e un numar
R2=b*a; %R2 reprezinta rezultatul inmultirii dintre b si a si e o matrice
 for i = 1:1:length(a)
        R3(i) = a(i)*b(i); %R5 reprezinta rezultatul inmultirii element cu element a celor doi vectori
 end
display(R1) %afiseaza pe R1
display(R2) %afiseaza pe R2
display(R3) %afiseaza pe R3