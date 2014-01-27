%Sea la funcion definida por f(x)=(x^3-9)/(x^2-16)

%A) Determinar el dominio
syms x; 
f=(x^3-9)/(x^2-16)
pretty(f)
[num,den]=numden(f); %Separa las raices
disp('El dominio de la función es todo R -{: ')
raices=solve(f)


%Puntos de corte
AbscCortsEjX=solve(num)
%Corte con el eje X
P1= [AbscCortsEjX(1), 0]
%Corte con el eje y
P2 = [0, subs(f,x,0)] 

%Apartado b
%Representa en el intervalo [-8,12] junto con los ejes cartesianos,
%dibujando éstos en trazado continuo y en color magenta
raiz=double(raices(1));
ezplot(f,[-8,12]), hold on;
plot([-40, 40],[0, 0],'m') % eje X
plot([0, 0], [-40, 40], 'm')%eje y

%C
%Determina las ecuaciones de las asíntotas verticales y oblicuas de la
%curva ¿Porque no existen horizontales?

disp('Calculo de las Asíntontas en  f(x)=f(x)=(x^3-9)/(x^2-16);')
raices=solve(den); %su raíz es cero
vert1=double(raices(1)); 
L1V=limit(f, x, raices(1)) %Solo tiene una raiz porque las otras son imaginarias
L1_izqV=limit(f, x, raices(1), 'left') % -inf
L1_drchV=limit(f, x, raices(1), 'right') % inf

vert2=double(raices(2)); 
L2V=limit(f, x, raices(2)) %Solo tiene una raiz porque las otras son imaginarias
L2_izqV=limit(f, x, raices(2), 'left') % -inf
L2_drchV=limit(f, x, raices(2), 'right') % inf
disp(['Las asíntotas verticales es ',num2str(vert1),num2str(vert2)])%Asíntota verticales en -4


%Calculo de las asíntotas oblicuas
%Por la derecha
md=limit(f/x,x,inf) %1
nd=limit(f-md*x,x,inf) %0
y1=md*x+nd
%Por la izquierda
mi=limit(f/x,x,-inf) %1
ni=limit(f-mi*x,x,-inf) %0
y2=mi*x+ni

%4
%Añade las asíntotas a la gráfica anterior. Las asçintotas en color rojo
disp('Apartado c): Representación gráfica de f con sus asíntotas')
plot([raices(1), raices(1)], [-40, 40], 'r-.')
plot([raices(2), raices(2)], [-40, 40], 'r-.')



%Determinas las coordenas del punto de corte de la gráfica con una de sus
%asíntotas
x1=solve(f-x)
y1=subs(f,x,x1) %y=x
fplot('x',[-8,12],'r')
%fplot('x1*x+nd',[-8,12],'r-.')
%fplot('x1*x+ni',[-8,12],'r-.')








