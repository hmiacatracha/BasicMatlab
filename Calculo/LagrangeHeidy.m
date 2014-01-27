%Autora: HMIA 
%Calculo de expresion del polinomio de Lagrange
%DIFERENCIAS DIVIDIDAS.

%Variables de entrada
format rat;   
n=length(nds);
 f=1:1:n;
 z=1:1:n;
 c=1:1:n;
 k=1;
%Pregunto si existen las variables sino le indico al usuario que tiene que
%hacer para a�adir el vector
if exist('nds')~=1 %#ok<*EXIST>
            disp('            Sr. Usuario debe de a�adir en la consola, valores de los siguientes a los vectores: "nds" y "y_nds"                ')
            disp(       'Ejemplo: nds=[1,2,3,4];  y_nds=[-1,3,11,27];'  )
            disp('recuerde que los vectores son del mismo numero de componentes') 
            break
else
    %Pos si acaso se le olvido definir la segunda variable
    if exist('nds')~=1 
    disp('Recuerde definir el vector "y_nds" con sus respectivos valores')
    disp('Ejemplo: y_nds=[-1,3,11,27];');
    break
    else
    if length(y_nds)~=n %#ok<*ALIGN>
    error('Los vectores nds e y_nds debe tener el mismo el n�mero de componentes')
    else
       
        %Este for tiene un doble bucle(Uno para calcular cada componente del vector
        %dependiendo a la posicion, y el otro para calcular las veces que tiene que 
        %repetirlo esto depende de la longitud del vector que el usuario agrego
        
        for k=1:n-k     
            c(k)=zeros(n,n-k);%Matriz se inicializan con ceros
                 for l=1:n-k
                     if k<=1
                        z(l)=(y_nds(l)-y_nds(l+1))/(nds(l)-nds(l+k))
                     else
                         z(l)=(c(l)-c(l+1))/(nds(l)-nds(l+k)) %#ok<*NOPTS>
                     end
                 end
                 c(k)=z(n-k);
        end
        %for k=n-1:
        %v_f=(y_nds(1):c(k):c(n-1
        syms x;
        monomios=x-nds
     
        pol=c(1)+c(2)*monomios(1)+c(3)*monomios(1)*monomios(2)+c(4)*monomios(1)*monomios(2)*monomios(3)
        valor_exacto=2^(5/2)-5
        format short; valor_doblprec=double(valor_exacto)
        valor_aprox=subs(pol,x,3/2)
        
        ezplot(pol,[nds(1),nds(n)])
        hold on; fplot('2^(x+1)-5',[nds(1),nds(n)],'r')
        for k=1:n
            plot(nds(k),y_nds(k),'g*')
        end
    end
    end
end


    
    
  
        
        
        
        
    

