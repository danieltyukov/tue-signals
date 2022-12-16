function [] = ex2c(Amplitude0, Frequency0, Phase0, SamplingFrequency0, SamplingFrequency1)
    t = linspace(0,0.05,1001);
    % x1 = Amplitude0 .* cos(2*pi*Frequency0 .*t + Phase0);

    v = 0;

    temp = 2*pi*(Frequency0/SamplingFrequency0);
    if temp > pi
        while temp >pi
            temp = temp-2*pi;
            v = v-1;
            if temp < pi
                break;
            end
        end
    elseif temp <=-pi
        while temp <= -pi
            temp = temp+2*pi;
            v = v+1;
            if temp > -pi
                break;
            end
        end
    end
    Theta0 = abs(temp);

    Frequency1 = (Theta0 * SamplingFrequency1)/(2*pi);
    Phase1 = Phase0 + v*2*pi;

    if Phase1 > 2*pi
        while Phase1 > 2*pi
            Phase1 = Phase1-2*pi;
            if temp < pi
                break;
            end
        end
    elseif Phase1 <= -2*pi
        while Phase1 <= -pi
                Phase1 = Phase1+2*pi;
            if Phase1 > -pi
                break;
            end
        end
    end

    xnew = Amplitude0* cos(2*pi*Frequency1.* t + Phase1);
    plot(t,xnew)
end
