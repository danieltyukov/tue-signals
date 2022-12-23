function [] = ex1( Amplitude, Decay, Length, Offset )
    x = -10:20;
    y = zeros(size(x));
    for n = Offset:Offset+Length-1
        y(n+1+abs(x(1))) = Amplitude*(Decay^(n-Offset));
    end
    figure;
    stem(x, y);
    xlabel('n'); ylabel('y[n]')
    
end

% ex1(2, 0.9, 10, 3)