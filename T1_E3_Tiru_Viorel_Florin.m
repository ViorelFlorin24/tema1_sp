a=randi([-10,10],1,10); %am generat aleator vectorul a cu valori intre -10 si 10,reprezentand partea reala a unui nr complex
b=randi([-10,10],1,10); %am generat aleator vectorul b, reprezentand partea imaginara a unui nr complex
x=complex(a,b) %am creat un vector de nr complexe
functie3(x); %am apelat functia ce realizeaza operatiile

%function [m,p,t]=functie3(x)
% m=mean(real(x)) realizeaza media partii reale a elementelor
% p=x.*x  ridicarea la patrat a elementelor vectorului de numere complexe
% t=x*x' inmultirea dintre matricea x si transpusa sa
