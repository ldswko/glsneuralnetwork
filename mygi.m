function [gi, gradgi, Hessiangi] = mygi(ai, x, bi)
    z = ai' * x;
    [sx, sdx, sddx] = mySigmoid(z);
    gi = sx - bi;
    gradgi = ai * sdx;
    Hessiangi = sddx * (ai * ai');
end