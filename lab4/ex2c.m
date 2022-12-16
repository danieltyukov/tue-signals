function [] = ex2c(Amplitude0, Frequency0, Phase0, SamplingFrequency0, SamplingFrequency1)
    theta = Frequency0/SamplingFrequency0;
    a = (theta - round(theta));
    if a == -0.5
        a = 0.5;
    end

    if a < 0
        Phase1 = -Phase0;
        a = -a;
    else
        Phase1 = Phase0;
    end

    Frequency1 = a*SamplingFrequency1;
    t = linspace(0, 0.05, 1001);
    y = Amplitude0*cos(2*pi*Frequency1*t + Phase1);

    plot(t,y)
end