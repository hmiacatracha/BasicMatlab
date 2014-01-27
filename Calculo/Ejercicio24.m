% EJERCICIO 2.4 de la Pr�ctica 2.
%
% Apartado a)
%
disp('Apartado a)') % muestra en pantalla el texto entre ap�strofes
disp(' ') % crea una l�nea en blanco
%
syms x; f=(x^2-9)/(x^2-4); % definimos f como una expresi�n simb�lica
pretty(f)% comprobamos que la expresi�n es la debida
%
% determinamos el dominio de la funci�n y los cortes con los ejes
% calculamos las ra�ces del denominador
[num, den]= numden(f); % separa numerador y denominador de f para poder
% trabajar con el denominador
%
disp('El dominio es R menos los valores que anulan el denominador: ')
raices = solve(den) % halla las ra�ces del denominador
%
% cortes con los ejes:
AbscCortsEjX = solve(num)
P1= [AbscCortsEjX(1), 0] % primer punto de corte con el eje X
P2= [AbscCortsEjX(2), 0] % segundo punto de corte con el eje X
%
P3 = [0, subs(f,x,0)] % Corte con el eje Y
%
% Representaci�n de f en [-10, 10]x[-3, 6] y los ejes
ezplot(f, [-10, 10]), hold on;
plot([-10, 10],[0, 0],'g') % eje X
plot([0, 0], [-3, 6], 'g') % eje Y
%%
% Apartado b)
% C�lculo de las as�ntotas horizontales
disp('Apartado b)')
disp(' ')
disp('C�lculo de as�ntotas horizontales')
disp(' ')
%
AH_d = limit(f, inf) % calcula as�ntota horizontal por la derecha (si existe)
AH_izq = limit(f,-inf) % calcula as�ntota horizontal por la izquierda (si existe)
AH1 = double(AH_d), AH2 = double(AH_izq) %convertimos las variables simb�licas a
%decimales en coma flotante en doble precisi�n
disp('Ecuaci�n de la as�ntota horizontal:')
disp(['y = ', num2str(AH1)])
%
disp('Al existir as�ntotas horizontales por la izquierda y por la derecha no puede haber ninguna as�ntota oblicua')
disp(' ')
% C�lculo de las as�ntotas verticales
disp('C�lculo de as�ntotas verticales')
disp(' ')
% como x tomamos los valores que anulan el denominador (calculados ya):
L1 = limit(f, x, raices(1))
L1_izq = limit(f, x, raices(1), 'left') % as�ntota en x=raices(1) por la izquierda
L1_drch = limit(f, x, raices(1), 'right') % as�ntota en x=raices(1) por la derecha
L2 = limit(f, x, raices(2))
10/10/12 17:51 D:\Docencia2012_2013\Ejercicio2_4.m 2 of 2
L2_izq = limit(f, x, raices(2), 'left') % as�ntota en x=raices(2) por la izquierda
L2_drch = limit(f, x, raices(2), 'right') % as�ntota en x=raices(2) por la derecha
r1 = double(raices(1)), r2 = double(raices(2)) %calcula los valores de las
% ra�ces en doble precisi�n
disp(['Las ecuaciones de las as�ntotas verticales de f son: x = ', ...
num2str(r1), ' y x = ' num2str(r2)]) %x = r1, x= r2
%
% Apartado c)
disp('Apartado c): Representaci�n gr�fica de f con sus as�ntotas')
%
plot([r1, r1], [-3, 6], 'r-.') % esta orden dibuja la recta x= r1 en color
% rojo y trazado discontinuo
%
plot([r2, r2], [-3, 6], 'r-.') %�sta dibuja la recta x = r2 en rojo y
% trazado discontinuo
%
%title('f con sus as�ntotas horizontales, verticales y los ejes');
plot([-10, 10], [AH1, AH1], 'r-.')%dibuja la as�ntota horizontal por la izquierda
plot([-10, 10], [AH2, AH2], 'r-.')%dibuja la as�ntota horizontal por la derecha
%
title('gr�fica de f con sus as�ntotas')