% punctul a
z=zeros(1,21) % se initializeaza vectorul cu o singura linie de zerouri
z(6)=1 % elementul de pe a 6-a coloana devine 1
figure(1)%se afiseaza in figura 1 graficele de mai jos
subplot(2,1,1) %impartim fereastra 1 pentru grafice si afisam urmatorul grafic in prima sectiune
n=0:20
stem(n,z), title('punctul a): n=0:20'),grid %reprezentatea discreta a lui z in functie de n
subplot(2,1,2) %reprezentarea grafcului urmator se va face in a doua sectiune a ferestrei
m=-5:15
stem(m,z), title('punctul a): m=-5:15'),grid %reprezentarea discreta a lui z in functie de n

%punctul b
n=0:20
t=abs(10-n)
figure(2)%se afiseaza in figura 2 graficele de mai jos
subplot(2,1,1)%impartim fereastra 1 pentru grafice si afisam urmatorul grafic in prima sectiune
plot(n,t) ,title('punctul b): n=0:20'),grid  %reprezentarea continua a lui t in functie de n
subplot(2,1,2)%reprezentarea grafcului urmator se va face in a doua sectiune a ferestrei
stem(n,t) ,title('punctul b): n=0:20'),grid  %reprezentarea discreta a lui t in functie de n

%punctul c
n1=-15:25
n2=0:50
x1=sin(n1*pi/17)
x2=cos(n2*pi/sqrt(23))
figure(3) %se afiseaza in figura 3 graficul de mai jos
plot(n1,x1,n2,x2)%se afiseaza continuu pe acelasi grafic x1 in functie de n1 si x2 in functie de n2
figure(4) %se afiseaza in figura 4 graficele de mai jos
subplot(2,1,1)%impartim fereastra 1 pentru grafice si afisam urmatorul grafic in prima sectiune
stem(n1,x1) ,title('punctul c): functia x2'),grid %reprezentarea discreta a lui x1 in functie de n1
subplot(2,1,2)%reprezentarea grafcului urmator se va face in a doua sectiune a ferestrei
stem(n2,x2) ,title('punctul c): functia x2'),grid %reprezentarea discretaa lui x2 in functie de n2