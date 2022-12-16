function [ Frequency1,Phase1 ] = ex2b (SamplingFrequency0, SamplingFrequency1)
    theta = 175/SamplingFrequency0;
    a = (theta - round(theta));
    if a == -0.5
        a = 0.5;
    end

    if a < 0
        Phase1 = -pi/3;
        a = -a;
    else
        Phase1 = pi/3;
    end

    Frequency1 = a*SamplingFrequency1;
    t = linspace(0, 0.1, 1001);
    y = cos(2*pi*Frequency1*t + Phase1);

    plot(t,y)

    %%  OR  %%

    t = linspace(0,0.1,1001);
    %x = cos(2*pi*175.*t+ p/3);

    v = 0;

    temp = 2*pi*(175/SamplingFrequency0);
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
    Phase1 = pi/3 + v*2*pi;

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

    xnew = cos(2*pi*Frequency1.* t + Phase1);
    plot(t,xnew)
end