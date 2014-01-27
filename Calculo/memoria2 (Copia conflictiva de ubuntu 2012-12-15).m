%memoria parte 2
%Representa en el intervalo [-10,10] y la curva y=(e^x+e^-x)/(e^x-e^-x) con
% %sus asíntotas horizontales y vertiales y/u oblicuas si existen.
% Justifica 

syms x; %Definimos la expresión símbolica
e=exp(1);
f=(e^x+e^-x)/(e^x-e^-x);
pretty(f)%Verificamos que la función

%Vamos a calcular el dominio de f(x)
[num, den]= numden(f);%Separa el numerador y denominador de la función
raices=solve(den)%Halla las raices de la función
concatenar=strcat('El dominio de la función es R-:',num2str(raices),'}') 
disp(concatenar)
