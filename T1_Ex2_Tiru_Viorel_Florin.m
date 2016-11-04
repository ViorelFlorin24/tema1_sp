t1=0:0.002:20;%esantionarea timpului
t2=0:0.02:20;
t3=0:0.2:20;

x1 = -0.5 +1.5*sawtooth (2 * pi * 0.2 * t1 , 0.6);  % genereaza semnalul triunghiular nesimetric pentru prima esantionare
subplot(3,1,1) %imparte fereastra pentru grafice in 3 sectiuni, iar urmatorul grafic o sa fie afisat in prima sectiune
plot(t1,x1),grid,xlabel('Timp(s)'),ylabel('Amplitudine'),title('Rezolutie temporala 0.002s');%afiseaza semnalul x1

x2 = -0.5 +1.5*sawtooth (2 * pi * 0.2 * t2 , 0.6);% genereaza semnalul triunghiular nesimetric pentru a doua esantionare
subplot(3,1,2) %urmatorul grafic o sa fie afisat in a doua sectiune
plot(t2,x2),grid,xlabel('Timp(s)'),ylabel('Amplitudine'),title('Rezolutie temporala 0.02s');

x3 = -0.5 +1.5*sawtooth (2 * pi * 0.2 * t3 , 0.6); % genereaza semnalul triunghiular nesimetric pentru a treia esantionare
subplot(3,1,3) %urmatorul grafic o sa fie afisat in a treia sectiune
plot(t3,x3),grid,xlabel('Timp(s)'),ylabel('Amplitudine'),title('Rezolutie temporala 0.2s');
