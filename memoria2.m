%Memoria 2
%Ejercicio 2.6
%Bajo la intensidad luminosa x, el tama�o de la p�pila de un animal viene
%dado en pupila de un animal dado en mil�mertros por 
%Ejercicio 2.2
y=tan(x)/x;
limit(y,x,pi/2,'right')
limit(y,x,pi/2)


syms x; f=(80/x^(3/10)+60)/(8/x^(3/10)+15);
limit(f,x,0)
limit(f,x,inf)
f=(64/x^(3/10)+60)/(8/x^(3/10)+30);
limit(f,x,0,'right')
limit(f,x,inf,'left')


%Ejercicio 2.7
%Determinar el dominio de f. Determina los puntos de corte de la curva
%y=(e^x+e^-x)/(e^x-e^-x)
syms x; e=exp(1);
f=(e^x+e^-x)/(e^x-e^-x);
pretty(f)
disp('El dominio de la funci�n es todo R -{: ')
[num,den]=numden(f);%Separa las raices
raices=solve(f) %Resuelve las raices
pause


disp('Calculo de las As�ntontas en  f(x)=(e^x+e^-x)/(e^x-e^-x);')
%Determinar si la funci�n tiene as�ntotas verticales, horizontales y/u
%oblicuas (Si existe)

%Calculo de as�ntotas verticales
raices_den=solve(den); %su ra�z es cero
vert1=double(raices_den(1)); 
L1V=limit(f, x, raices_den(1)) 
L1_izqV=limit(f, x, raices_den(1), 'left') % -inf
L1_drchV=limit(f, x, raices_den(1), 'right') % inf
disp(['Las as�ntotas verticales es ',num2str(vert1)])
raiz=double(raices_den(1)); %Ra�z 

%Calculo de as�ntotas horizontales
L1_derH=limit(f,x,inf)
L1_izqH=limit(f,x,-inf)
AH1 = double(L1_derH), AH2 = double(L1_izqH)
disp('Ecuaci�n de la as�ntota horizontal:')
disp(['f = ', num2str(AH1),' y ',num2str(AH2)]) %en 1 y -1
disp('Representaci�n gr�fica de f con sus as�ntotas')

%
%Como vemos existen as�ntotas verticales y horizontales--> podemos decir
%que no existen as�ntontas oblicuas

%Representaci�n de f(x) en el intervalo [-10,10]
disp('Representaci�n gr�fica de f con sus as�ntotas')
ezplot(f, [-10, 10])
hold on;
plot([-10, 10],[0, 0],'b') % eje X
plot([0, 0], [-10, 10], 'b') % eje Y

plot([raiz, raiz], [-10, 10], 'g-.') %Donde se anula la ra�z
plot([-10, 10], [AH1, AH1], 'r-.')%dibuja la as�ntota horizontal por la izquierda 
plot([-10, 10], [AH2, AH2], 'r-.')%dibuja la as�ntota horizontal por la derecha




