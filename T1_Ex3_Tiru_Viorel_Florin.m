A=[-1,1];%se declara vectorii ale caror elemente reprezinta nivelurile
B=[-3,-1,1,3];
C=[-5,-3,-1,1,3,5];
D=[-7,-5,-3,-1,1,3,5,7];
E=[;];
a=rand(1,5);%se genereaza un vector de 5 elemente aleatoate
            %in functie de valoarea pe care o are fiecare element, in
            %secventa urmatoare se va genera un vector E format din vectorii
            %declarati anterior
for i=1:1:5
    if a(1,i)<0.25
        E=[E,A];%daca valoarea elementului i din vectorul a este mai mica 
                %decat 0.25 in vectorul E se va adauga vectorul A
                %similar se va face si in instructiunile urmatoare
    end
    if a(1,i)>=0.25&&a(1,i)<0.5
        E=[E,B];
    end
    if a(1,i)>=0.5&&a(1,i)<0.75
        E=[E,C];
    end
    if a(1,i)>=0.75&&a(1,i)<=1
        E=[E,D];
    end
end

q=length(E);% reprezinta lungimea vectorului E care are lungime variabila
y1=linspace(0,0.25*q,q);%realizeaza un vector care porneste de la 0 la 
                        %0.25*q cu pas de 0.25. Acesta reprezinta
                        %coordonatele temporale necesare reprezantarii
                        %vectorului E
y2=y1;
y3=y1;
%in continuare voi modifica coordonatele temporale in functie de
%esantionare. De exemplu, al treilea element al vectorului E trebuie
%afisat la t=0.75s. Pentru esantionarea 0.02, nu exista t=0.75, cea mai 
%apropiata valoare este t=0.74 sau t=0.76 iar reprezentarea se va face
%intr-unul din cele 2 momente de timp. Pentru esantionarea 0.2,
%reprezentarea se va face in t=0.8
for i=1:q
    if rem( y1(i),0.002)>0
        y1(1,i)=y1(i)-rem( y1(i),0.002);
    end
    if rem( y2(i),0.02)>0
        y2(i)=y2(i)-rem( y2(i),0.02);
    end
    if rem( y3(i),0.2)>0&&rem( y3(i),0.2)<=0.1
        y3(i)=y3(i)-rem( y3(i),0.2);
    else
        y3(i)=y3(i)+0.05;
    end
 end
 %axis([0 10 -9 9]);%seteaza coordonatele axelor
 subplot(3,1,1)%imparte fereastra pentru grafice si afiseaza umatorul grafic in prima sectiune
 stairs(y1,E),grid,title('Rezolutie temporala 0.002s'),xlabel('Timp(s)'),ylabel('Amplitudine')
 %afiseaza semnalul in fuctie de esantionare folosind functia stairs
 subplot(3,1,2)
 stairs(y2,E),grid,title('Rezolutie temporala 0.02s'),xlabel('Timp(s)'),ylabel('Amplitudine') 
 subplot(3,1,3)
 stairs(y3,E),grid,title('Rezolutie temporala 0.2s'),xlabel('Timp(s)'),ylabel('Amplitudine')

        