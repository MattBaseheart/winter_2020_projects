function plot_Mag_Phase(x_k, N)
%PLOT_MAG_PHASE Given frequency domain signal x_k, generate a plot of the
%frequency and time domain

n = 0:N-1;

subplot(211)
stem(n, abs(x_k))
title("MAGNITUDE")
xlabel("N")
ylabel("Magnitude")

subplot(212)
stem(n, angle(x_k))
title("PHASE")
xlabel("N")
ylabel("Phase angle")

end

