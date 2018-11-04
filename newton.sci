function [result] = f(t0)
    result = 3*sin(t0-1)+5*t0-7.8
endfunction

function [result] = df(t0)
    result = 3*cos(t0-1) + 5
endfunction

function [t] = newton(t0,e,it)
    contIt = 0
    erro = 100
    t = t0
    while (e < erro & contIt < it)
        t0 = t
        t = t0 - f(t0)/df(t0)
        contIt = contIt + 1
        erro = abs((t-t0)/t)
    end
endfunction

