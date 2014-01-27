%Ejercicios matlab
%Crea un vector V1 con enteros desde 1 hasta 1000
v1=1:1:1000
%Crea un vector V2 con números de 0 a 2, espaciados 0,01 unidades
v2=0:0,01:2
%Halla el seno de todos los elementos del vector V2
sen(v2)
%Define las siguientes matrices
m1=[1 4 6;3 4 5; 9 10 2; 8 3 7]
    m2=[3 4 2;4 6 1; 7 3 4;5 1 5]
%a) Suma las matrices M1 y M2
m1+m2
%Multiplica M1 por 3
m1*3
%Multiplica cada elemento de M1 por el elemento situado en la misma posición en M2
m1.*m2
% Obtén el tamaño de la matriz M1
   size(m1)
% e) Obtén el número de filas de la matriz M2
 length(m2)
% f ) Accede al elemento situado en la fila 4 y columna 1 de la matriz M2
m(4,1:2)
% g) Muestra la tercera fila de la matriz M2
m2(3,:)
% h) Muestra la segunda columna de la matriz M1
m1(:2)

% i) Obtén la matriz transpuesta de M1
m1'

% j ) Crea una submatriz SM1 que abarque las tres primeras filas y las dos
% últimas columnas de M1 
sm1=m1(1:3,2:3)


% k) Obtén el valor máximo y el valor mínimo de la matriz M1
max(m1)
min(m1)

% 5. Multiplica las siguientes matrices
m3=[5 3 1;2 7 5]
m4=[1 2;2 5; 3 5]
m3*m4;

% 6. Crea una matriz M5 de 3 filas y 2 columnas formada por ceros
m5=zeros(3,2)

% 7. Crea una matriz M6 de 4 filas y columnas formada por unos
 m6=ones(4)

% 8. Crea una matriz M7 de 2 filas y 3 columnas formada por valores aleatorios
m7=rand(2,3)

% 4.2. Programación
% 9. El uso de bucles es común en la mayoría de los lenguajes de programación. En
% Matlab, muchos bucles consistentes en aplicar una función a un conjunto de datos pueden
% reescribirse como operaciones sobre matrices, incrementando así la eficiencia del proceso.
% Convierte los siguientes bucles a operaciones matriciales:
% a) M= [1 2 3; 4 5 6; 7 8 9];
M= [1 2 3; 4 5 6; 7 8 9];
N=.M(1,:).*M(1,:)'

% b)
% c) A = 0:0.5:10;

% 10. Crea un script que genere dos matrices con valores aleatorios del mismo tamaño, las
% reste y calcule el número de valores mayores que cero. Ejecuta el script y comprueba el
% estado del espacio de trabajo antes y después de la ejecución.
% 11. Implementa una función llamada stat que devuelva la media, el máximo y el mínimo
% de una matriz pasada como parámetro. Crea una matriz, aplícale la función y comprueba el
% estado del espacio de trabajo tras la llamada a la función.