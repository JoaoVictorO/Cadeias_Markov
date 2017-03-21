 t = 0; 
 tam = 0; 

function  Absorvente(A)
     k =  0;
     [l,c] = size(A);
     tam = l; 
     for i = 1 : tam
         if A(i)(i) == 1: then 
             printf(" O Estado %g é absorvente!\n",i);
        end
        for j = 1 : tam
            if A(i)(j) <> 0: then
                k = k +1;
            end
        end    
     end
     if k < (tam*tam) then
         printf("A cadeia não é ergodica!\n");
     else
         printf("A cadeia é ergodica e regular!\n");
     end
endfunction 
 
 function  Periodica(A)
     k = 0;
     V = -1;
     [l,c] = size(A);
     tam = l;
     for i = 1 : tam
         v = int32([1,(A(i)(i) *100)]);
         [mdc,p] = gcd(v);
         if mdc == 1 :then 
             k = k +1; 
         elseif mdc <> 1 and V <>-1  then
            if  V == mdc :then
                V = mdc;
            else 
                V = -1;
            end
        end
     end
     if k == tam then
        printf("A cadeia é aperiodica!\n");
     elseif V <>-1 :then
         printf("A cadeia é periodica em periodo : %g\n",V);
     else
         printf("A cadeia não tem periodo definido\n")     
     end
 endfunction
 
 function T = EixoFixo(A, nh, E)
     T = 0;
     aux = 0;
     [l,c] = size(A);
     tam = l;
     MAP = eye(tam,tam) * E;
     for w = 0 : h
             B = A*A; 
                for j = 1 : tam
                        for i = 1 : tam
                             if B(i,j) <= MAP(i,j) then
                               aux  = w; 
                            else
                                aux = -1;
                            end
                     end   
            end
            if aux <> -1 &  T == -1  then
                T = aux;
            end     
    end
    
    if T<>-1 then  
        printf("A cadeia admite uma distribuição estacionaria a partir de t = %g",T);
    end
endfunction

function [Q,T,QI] = Estacionaria(A)
 
    [Q,T]=spec(A); 
    QI =inv(Q);
    [l,c] = size(T);
    Y = T^1000000; 
    
    for i = 1 : l
        for j = 1 : l
            if Y(i,j) > 1 then 
                printf("A cadeia não é homogenia e nem estacionaria!\n");
                return; 
           end
        end
    end
endfunction

function [P] =TransicaoD(Q,T,QI,t,e)
    for i = 1 : tam 
        T(i,i) = T(i,i) ^t;
    end
    P = Q * T * QI;
endfunction

function P = Transicao(A,t,e)
        
        B = A^t;
        
        if e == 1 then
            P  = B * [1;0;0];
        elseif e == 2 then
           P  = B * [0;1;0];
        elseif e == 3 then
            P  = B * [0;0;1];  
        end
endfunction



