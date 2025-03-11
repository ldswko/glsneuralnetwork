function [f, gradf, Hessianf] = myf(A, x, b)
    [n, m] = size(A);
    f = 0;
    gradf = zeros(n, 1);
    Hessianf = zeros(n, n);
    for i = 1:m
        ai = A(:, i);
        bi = b(i);
        [gi, gradgi, Hessiangi] = mygi(ai, x, bi);
        f = f + 0.5 * gi^2;
        gradf = gradf + gi * gradgi;
        Hessianf = Hessianf + gradgi * gradgi' + gi * Hessiangi;
    end
end