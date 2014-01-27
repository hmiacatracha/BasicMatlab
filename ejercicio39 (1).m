%Ejercicio 
%En un espejo plano que ten�a forma cuadrada de lado un metro, se ha roto
%por una esquina seg�n una recta.
%Uno de los trozos tiene forma tri�ngulo rect�ngulo de catetos 40 y 50 cm.
%Halla las dimensiones del espejor rect�ngular de �rea m�xima que se puede
%recortar del otro trozo, de modo que los bordes del nuevo espejo sean
%paralelos a los del espejo primitivo. Calcula el valor de dicha �rea

%Ecuacion de la recta
%(50-0)/0-40)=(y-0/x-40)->50/-40(x-40)
syms x
disp('Ecuacion de la recta y=-5/4*x+50')
%A=a.b=(100-x)(100-y)
%A=(100-x)(100-(-5/4*x+50))
%A=(100-x)(50+5/4*x)
A=(100-x)*(50+5/4*x);
%Resolvemos la ecuaci�n
ecu=solve(diff(A))
%Nos da que el area esta en  30
%Conprobamos que es un m�ximo con la segunda derivada
disp('Para asegurarnos que es un m�ximo calculamos la segunda derivada:')
derivada=diff(A,2);
subs(derivada,x,ecu)
subs(A,x,30)
