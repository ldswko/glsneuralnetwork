function [sx,sdx,sddx] = mySigmoid(x)
    sx = 1/(1+exp(-x));
    sdx = sx * (1-sx);
    sddx = sdx * (1-2*sx);
end
