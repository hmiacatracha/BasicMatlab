%5.1
%Ejercicio para entregar.
%A lo largo de un trayecto de 30 km. de una carretera se situan puntos de
%velocidad por radas, César pasa con su automovil por esos puntos a las
%velocidades que se registran en las siguiente tabla:

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   punto kilómetrico| 0 |10|15|20|30|%%%
%   velocidad(m/seg) | 25|30|15|20|25|%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%A cesar le ha llegado una multa por exceso de velocidad en el punto
%kilometrico 17, en donde está limitada la velicidad a 70km/h. Estima de
%varias formas la velocidad a la que pasó César por ese punto:

%a)Generando el  polinomio de interpolacion de lagrange a partir de los
%datos que dispones utilizando diferencias divididas.

xi=[0 10 15 20 30];
wi=[25 30 15 20 25];

n=length(xi);
f=1:1:n;
z=1:1:n;
c=1:1:n;
if (length(xi)==length(wi)) disp('***********POLINOMIO DE INTERPOLACICION DE LAGRANGE**********');

    for k=1:n-1;
        c(k)=zeros(n,n-k) %Matriz inicializadas con ceros
        %for j=1:n-k
    end  
            
    
    
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
else disp('Los vectores no estan definidos correctamente')
end  

    

