%Ejercicios memoria de prácticas nº1
%Ejercicio 1.12
%Calcula:
(2^3)^4 %El resultado de es: 4096
2^(3^4) %El resultado es:2.4179e+024
%Son iguales los resultados anteriores? No
% ¿Es correcta la siguiente orden? .... SI
2^3^4 
%Es correcta y hace referencia al apartado a) da el mismo resultado

%Ejercicio 1.13
format short; 51.555
format bank; 51.555
%En vista del resultado obtenido ¿Cual es la representacion en formato bank
%de 51.554 ¿Porque? 
format bank; 51.554 %porque este formato tiene dos decimales por defecto 
%lo redondea cuando el tercer decimal es mayor que cinco.
%Lo deja tal en 52.55 y no redondea.

%Ejercicio 1.14
%A) Teclea las siguientes lineas y analiza el porqué de cada una de las dos
%respuestas:
exp(log(realmax))
%e^log(realmax);
%log(realmax)=709.78 y e^709.79 da = al numero máximo de los reales. La
%cifra es parecida al resultado si tecleamos realmax
pi*ans 
% su respuesta es Inf, porque si aun encima da el valor máximo dentro de
% los reales y aún encima lo multiplicamos por otro número pues ya el rago
% se extiende y nos da infinito no pudiendo mostrar el valor.

%B) Teclea la siguiente linea y analiza el porqué de la diferencia con la
%respuesta obtenida en la primera instrucción del apartado anterior
log(exp(realmax))
%
%Ejercicios 1.15
x=[1/5,3,2,-7,0.2];v=[2,4,5]; x(v)
%Muestra un sub-vector de X, precisamente los elementos de las posiones
%indicadas en el vector V, obteniedo el resultado siguiente [3.00, -7.00, 0.20]
%*********************DE aqui en adelante se utiliza los %scripts*********












