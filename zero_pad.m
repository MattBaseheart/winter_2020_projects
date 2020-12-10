function result = zero_pad(x_n, L_R_B, new_len)
%Assuming L_R_B is either -1, 0, or 1. If L_R_B is -1, zero padding will be
%done on the left side of the signal. If it is 1, zero padding will be done
%on the right side of ths signal. If it is 0, it will be done as evenly as
%possible on both sides of the signal (if the new length is odd, one extra
%zero will be added to the right side).
curr_len = length(x_n);
addZeros = new_len - curr_len;
addMe = zeros(1, addZeros);

if(L_R_B == -1)
    result = [addMe, x_n];
elseif(L_R_B == 1)
    result = [x_n, addMe];
else
    if(mod(new_len, 2) == 0)
        result = [addMe(1:addZeros/2), x_n, addMe(((addZeros/2)+1): addZeros)];
    else
        result = [addMe(1:addZeros/2), x_n, addMe(((addZeros/2)): addZeros)];
    end
end

