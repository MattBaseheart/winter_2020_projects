function result = dft(x_n)
%Input discrete time signal x_n and length of DFT N, return the DFT as a
%x_k signal
    N = length(x_n);
    result = zeros(1,N);
    for k=0:N-1
        sum = 0;
        for n=0:N-1
            sum = sum + (x_n(n+1) * exp((-j*2*pi*n*k)/N));
        end
        result(k+1) = sum;
    end
end

