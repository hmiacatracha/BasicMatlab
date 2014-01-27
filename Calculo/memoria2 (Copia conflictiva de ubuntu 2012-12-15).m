%memoria parte 2
%Representa en el intervalo [-10,10] y la curva y=(e^x+e^-x)/(e^x-e^-x) con
% %sus as�ntotas horizontales y vertiales y/u oblicuas si existen.
% Justifica 

syms x; %Definimos la expresi�n s�mbolica
e=exp(1);
f=(e^x+e^-x)/(e^x-e^-x);
pretty(f)%Verificamos que la funci�n

%Vamos a calcular el dominio de f(x)
[num, den]= numden(f);%Separa el numerador y denominador de la funci�n
raices=solve(den)%Halla las raices de la funci�n
concatenar=strcat('El dominio de la funci�n es R-:',num2str(raices),'}') 
disp(concatenar)
