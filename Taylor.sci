function T=Taylor(r1,r2,r3,w,t0,t,n)
    //r1, r2, r3 e w: coeficientes
    //t0: tempo com angulo conhecido, t: tempo em que será estimado
    //w: frequencia angular
    //n: grau do polinomio de Taylor
    
    T = r1
    for i = 0 : n
        mod= modulo(i,4)    
        if mod==0
            seno=sin(w*t0)
            coseno = cos(w*t0)
        elseif mod==1 
            seno=cos(w*t0)
            coseno = -sin(w*t0)
        elseif mod==2
            seno=-sin(w*t0)
            coseno = -cos(w*t0)
        elseif mod==3
            seno=-cos(w*t0)
            coseno=sin(w*t0)       
        end
        T = T  + ((r3*(w^i))*seno*((t-t0)^i)/factorial(i)) + ((r2*(w^i))*coseno*((t-t0)^i)/factorial(i))
    end
endfunction
