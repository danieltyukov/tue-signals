ww=-pi:(pi/500):pi;
HH = freqz(1/4*ones(1,4),1,ww);

indices = find(abs(HH)<1e-6);
nulling = ww(indices);