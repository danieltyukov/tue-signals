function [ Theta0 ] = ex2a( Frequency0, SamplingFrequency0 )

    temp = 2*pi*(Frequency0/SamplingFrequency0);

    if temp > pi
        while temp >pi
            temp = temp-2*pi;
            if temp < pi
                break;
            end
        end
    elseif temp <=-pi
        while temp <= -pi
            temp = temp+2*pi;
            if temp > -pi
                break;
            end
        end
    end
    Theta0 = temp
end

