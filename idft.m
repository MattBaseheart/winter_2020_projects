function result = idft(x_k)
%Input frequency domain x_k signal and length of DFT N, return discrete 
%time signal x_n
    N = length(x_k)
    result = zeros(1,N);
    for n=0:N-1
        sum = 0;
        for k=0:N-1
            sum = sum + ((x_k(k+1) * exp((-j*2*pi*n*k)/N))/N);
        end
        result(n+1) = sum;
    end
    result = [result(2:end) result(1)];
    result = flip(result);
end

