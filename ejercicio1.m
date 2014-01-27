%Ejercicio 1.8
%¿Qué se obtiene con la ordenes siguientes?
t=0:pi/180:2*pi;
x=cos(t);
y=sin(t);
plot(x,y,'r-'), axis equal;
%¿Y con las instrucciones siguientes?
x=0:pi/100:pi/4;
y=tan(x);
plot(x,y);
hold on;
z=sin(2*x); plot(x,z,'g-.');

%%Ejercicio 1.12
(2^3)^4 %El resultado de es: 4096
2^(3^4) %El resultado es:2.4179e+024
%Son iguales los resultados anteriores? No
% ¿Es correcta la siguiente orden? .... SI
2^3^4 
%Es correcta y hace referencia al apartado a) da el mismo resultado
%Los paremtesis son imnecesarios.

%Ejercicio 1.14
%A) Teclea las siguientes lineas y analiza el porqué de cada una de las dos
%respuestas:
exp(log(realmax))
%e^log(realmax);
%log(realmax)=709.78 y e^709.79 da = al numero máximo de los reales. La
%cifra es parecida al resultado si tecleamos realmax
%Porque son dos operaciones inversas
pi*ans 
% su respuesta es Inf, porque si aun encima da el valor máximo dentro de
% los reales y aún encima lo multiplicamos por otro número pues ya el rago
% se extiende y nos da infinito no pudiendo mostrar el valor.

%B) Teclea la siguiente linea y analiza el porqué de la diferencia con la
%respuesta obtenida en la primera instrucción del apartado anterior
log(exp(realmax))
%ente linea y analiza el porqué de lña diferemcoa cpm

%Ejercicio 1.6
%¿Qué hace las siguientes ordenes?
v=[3 6 2 4 1 5]
v(1)
v([2,4])
v(1:2:5)
1/2:7/2
5:3:17
linspace(2,10,9)
%Ejercicio 1.7


%Ejercicio 1.15
%¿Qué calcula la siguiente instrucción siguiente?
x=[1/5,3,2,-7,0.2]; v=[2,4,5]; x(v);
%Muestra un sub-vector de X, precisamente los elementos de las posiones
%indicadas en el vector V, obteniedo el resultado siguiente [3.00, -7.00, 0.20]
%*********************DE aqui en adelante se utiliza los %scripts*********
%1.5.2

figure(2);
x=[1 2 3 -4 5]; y=[1 -1 7 4 -2]; plot(x,y)
x=[-10,10]; y=[0,0];plot(x,y);
hold on
z=[-5,5];plot(y,z)
x=[-10,10]; u=[-2,-2];plot(x,u,'r-.')
w=[4,4];plot(w,z,'r-.')

%Dibujar graficas 2.4
syms x;
f=(x^2-9)/(x^2-4)
ezplot(f);
ezplot(f,[-10,10]);
limit(f,x,2,'right')
limit(f,x,2,'left')

%a)Dominio de f

f=(x^2-9)/(x^2-4); numden(f)
[num,den]=numden(f) %Denimonador
raices=solve(den)
%El dominio de la funcion es R -{raices}

%Corte con los ejes
solve(num) %Me da las x las abcisas los puntos seran (3,0) (-3,0) con OX
subs(f,x,0) %El punto [0,9/4]


%Ejercicio 2.6
%Bajo la intensidad luminosa x, el tamaño de la púpila de un animal viene
%dado en pupila de un animal dado en milímertros por 
syms x; f=(80/x^(3/10)+60)/(8/x^(3/10)+15);
limit(f,x,0)
limit(f,x,inf)
f=(64/x^(3/10)+60)/(8/x^(3/10)+30);
limit(f,x,0,'right')
limit(f,x,inf,'left')


%Ejercicio 2.2
y=tan(x)/x;
limit(y,x,pi/2,'right')
limit(y,x,pi/2)


















