function [v3] = concatenar(v1,v2)
    for i = 1:length(v1)
        v3(i) = v1(i)
    end
    for i = 1:length(v2)
        v3(i + length(v1)) = v2(i)
    end
endfunction
