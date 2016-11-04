    Fs = 12000;
    N = 0.5*12; %Numar de  esantioane 0.5 ms * 12kHz
    n = 1:N;
    v=randi([0,1],1,N)%genereaza un sir binar de N elemente
    ts = 1/Fs; %ts e timpul de esantionare
    t = ts:ts:N*ts; 
    subplot(2,1,1)%urmatorul grafic va fi afisat in prima sectiune a ferestrei
    plot(t,v);%semnal gereat continuu in functie de t
    subplot(2,1,2)%urmatorul grafic va fi afisat in a doua sectiune a ferestrei
    stem(n,v),grid %semnalul generat discret in functie de n