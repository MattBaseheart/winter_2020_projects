function result = convolution(x1_n,x2_n)
%CONVOLUTION Assuming x1_n and x2_n satisfy requirements for the fourier
%transform to exist, compute the convolution in the frequency domain
x1_f = dft(x1_n);
x2_f = dft(x2_n);
result_f = x1_f .* x2_f;
result = idft(result_f);
end

