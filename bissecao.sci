function [result] = f(x)
    result = 3*sin(x-1) + 5*x - 7.8
endfunction

function [raiz,it] = bissecao(a,b,e,N)
    it = 0
    erro = 100
    raiz = a
    while(erro > e & it < N)
        raiz_anterior = raiz
        raiz = (a+b)/2
        if(f(raiz) * f(a) < 0) then
            b = raiz
        else
            a = raiz
        end
        erro = abs((raiz-raiz_anterior)/raiz)
        it = it + 1
        end
endfunction

