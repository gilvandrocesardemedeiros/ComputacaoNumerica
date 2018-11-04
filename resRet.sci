function [X] = resRet(A,b)
    [l,c] = size(A)
    for i = l:-1:1
        valor = 0
        for j = c:-1:i+1
            valor = valor + A(i,j)*X(j)
        end
        X(i) = (b(i) - valor)/A(i,i)
    end

endfunction
