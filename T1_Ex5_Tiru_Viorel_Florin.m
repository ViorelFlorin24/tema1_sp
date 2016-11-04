t1=0:0.002:10;%esantionarea timpului
t2=0:0.02:10;
t3=0:0.2:10;

F=1/4;%calculeaza frecventa

w0=2*pi*F;%calculeaza pulsatia

subplot(3,1,1)%imparte fereastra pentru grafice in 3 sectiuni iar urmatorul grafic o sa fie afisat in prima sectiune
s1=abs(1.5*sin(w0*t1));%calculeaza semnalul sinusoidal dubla alternanta dupa prima esantionare
plot(t1,s1),grid, title('Rezolutie de 0.002s'),xlabel('Timp(s)'),ylabel('Amplitudine')%afiseaza graficul

subplot(3,1,2)
s2=abs(1.5*sin(w0*t2));
plot(t2,s2),grid, title('Rezolutie de 0.02s'),xlabel('Timp(s)'),ylabel('Amplitudine')

subplot(3,1,3)
s3=abs(1.5*sin(w0*t3));
plot(t3,s3),grid, title('Rezolutie de 0.2s'),xlabel('Timp(s)'),ylabel('Amplitudine')