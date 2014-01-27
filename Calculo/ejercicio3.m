%Ejercicio 3.2
%Determina el valor de la derivada segunda de la ecuacion en el punto
%e^(x^2) en el punto x=0
syms x; f=exp(x^2)
df2=diff(f,2)
subs(df2,x,0)

%Ejercicio 3
%Polinomio de taylor p3,p4,p5 centrados en x=pi/4
%del sen(x)
syms x;
f=sin(x)
punto=pi/4
p3=taylor(f,4,punto)
p4=taylor(f,5,punto)
p5=taylor(f,6,punto)
ezplot(f, [-1, 1])
hold on;
fplot('(2^(1/2)*(pi/4 - x)^3)/12 - (2^(1/2)*(pi/4 - x)^2)/4 + 2^(1/2)/2 - (2^(1/2)*(pi/4 - x))/2',[-1,1],'m')
fplot('(2^(1/2)*(pi/4 - x)^3)/12 - (2^(1/2)*(pi/4 - x)^2)/4 + (2^(1/2)*(pi/4 - x)^4)/48 + 2^(1/2)/2 - (2^(1/2)*(pi/4 - x))/2',[-1,1],'r')
fplot('(2^(1/2)*(pi/4 - x)^3)/12 - (2^(1/2)*(pi/4 - x)^2)/4 + (2^(1/2)*(pi/4 - x)^4)/48 - (2^(1/2)*(pi/4 - x)^5)/240 + 2^(1/2)/2 - (2^(1/2)*(pi/4 - x))/2',[-1,1],'g')


%Ejercicio 3.9
%Un espejo plano que tenía forma cuadrada de lado un metro, se ha roto por
%una esquina según una racta. Uno de los trozos tiene forma de triángulo
%rectángulo de catetos 40 y 50 cm. Halla las dimenciones del espejo
%rectángular del área máxima que se puede recortar del trozo, de modo que
%los bordes del nuevo espejo sean paralelos a los del espejo primitivo.
%Calcula el valor de dicha distancia.





