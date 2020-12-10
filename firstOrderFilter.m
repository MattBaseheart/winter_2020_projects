function [b_coeff,a_coeff] = firstOrderFilter(type, fc, fs)
%FIRSTORDERFILTER Accept a string filter type, cutoff frequency, and
%sampling frequency. Returns the Numerator (b_coeff) coefficients and
%Denominator (a_coeff) coefficients of the transfer function

    if ~exist('fs', 'var')
        fs = 44100
    end
    
    K = tan(pi*fc/fs);
    a1 = (K-1)/(K+1);
    if(type == 'low' || type == 'Low' || type == 'lowpass' ||type == 'Lowpass')
        b0 = K/(K+1);
        b1 = K/(K+1);
    elseif(type == 'high' || type == 'High' || type == 'highpass' ||type == 'Highpass')
        b0 = 1/(K+1);
        b1 = -1/(K+1);
    elseif(type == 'all' || type == 'All' || type == 'allpass' ||type == 'Allpass')
        b0 = (K-1)/(K+1);
        b1 = 1;
    else
        msg = 'Invalid parameter: filter type. Accepted inputs: low, Low, lowpass, Lowpass, high, High, highpass, Highpass, all, All, allpass, Allpass.'
        error(msg)
    end
    
    b_coeff = [b0 b1];
    a_coeff = a1;

end