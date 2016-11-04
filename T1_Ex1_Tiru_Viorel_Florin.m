t1=0:0.002:5; %reprezinta esantionarea axei timpului din 0.002 secunde in 0.002 secunde
t2=0:0.02:5;
t3=0:0.2:5;

x1=-0.25+0.75*square(pi*t1,25); % genereaza semnalul dreptunghiular
x2=-0.25+0.75*square(pi*t2,25);
x3=-0.25+0.75*square(pi*t3,25); 
subplot(3,1,1) %imparte fereastra pentru grafice in 3 sectiuni, iar urmatorul grafic este afisat in prima sectiune
plot(t1,x1),grid,title('Rezolutie temporara de 0.002'),xlabel('Timp(s)'),ylabel('Amplitudine') %afisare semnal dreptunghiular cu rezolutie temporara 0.002
subplot(3,1,2) %urmatorul grafic este afisat in a doua sectiune
plot(t2,x2),grid,title('Rezolutie temporara de 0.02'),xlabel('Timp(s)'),ylabel('Amplitudine') %afisare semnal dreptunghiular cu rezolutie temporara 0.02
subplot(3,1,3) %urmatorul grafic este afisat in a treia sectiune
plot(t3,x3),grid,title('Rezolutie temporara de 0.2'),xlabel('Timp(s)'),ylabel('Amplitudine') %afisare semnal dreptunghiular cu rezolutie temporara 0.2

