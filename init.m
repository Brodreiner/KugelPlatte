KUGEL_DURCHMESSER = 0.05;
PLATTE_KANTENLAENGE = 0.8;

[num, den] = ss2tf(Plant.a, Plant.b, Plant.c, Plant.d);
Plant_TF = tf(num, den);

simout_in = simout.Data(:,1);
simout_out = simout.Data(:,2);

% remove offset
plot(simout.time, simout_in, simout.time, simout_out);
simout_out = simout_out - simout_out(1);

plot(simout.time, simout_in, simout.time, simout_out);
