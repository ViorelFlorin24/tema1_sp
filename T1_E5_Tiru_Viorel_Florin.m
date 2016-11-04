F = 50; %initializarea frecventei F=50Hz
t = 0:0.001:0.2; %esantionarea timpului de la 0 la 0.2 cu pasul 0.001
t1=0:0.01:0.2; %esantionarea timpului de la 0 la 0.2 cu pasul 0.01 
t2=0:0.0002:0.2; %esantionarea timpului de la 0 la 0.2 cu pasul 0.0002
%esantionarea timpului cu un pas mai mic va conduce la construirea unui
%grafic cu o "rezolutie" mai bun, mai "fin", deoarece curba ce va constitui
%graficul va fi alcatuita din mai multe puncte
s = 2*sin(2*pi*F*t); %declararea semnalului sinusoidal s
s1= 2*sin(2*pi*F*t1); %declararea semnalului sinusoidal s1
s2= 2*sin(2*pi*F*t2); %declararea semnalului sinusoidal s2
F1 = 20; %initializarea frecventei F1 cu 20Hz
c = 2*cos(2*pi*F1*tc); %declararea semnalului cosinusoidal c
subplot(3,1,1) %impartirea fereastra pentru grafic in 3, iar urmatorul grafic va fi afisat in prima sectiune
plot(t,s,t,c,'r'),xlabel('Timp [s]'),grid,title('Afisarea semnalului s si c pe acelasi grafic')
subplot(3,1,2) %urmatorul grafic va fi afisat in a 2-a sectiune
plot(t1,s1),xlabel('Timp [s]'),grid ,title('Afisarea semnalului s1 cu t1=0.01')
subplot(3,1,3) %urmatorul grafic va fi afisat in a 3-a sectiune
plot(t2,s2),xlabel('Timp [s]'),grid ,title('Afisarea semnalului s1 cu t2=0.0002')
