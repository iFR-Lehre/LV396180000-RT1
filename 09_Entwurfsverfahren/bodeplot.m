function bodeplot(k,Ti,Td)

s = tf('s');

if Td > 1e-3
    Gd = Td*s;
else
    Gd = 0;
end
if Ti < 1e2
    Gi = 1/(Ti*s);
else
    Gi = 0;
end

G0 = (1 + Gi + Gd)*tf([0 0 8.2631 1.6702],[1 0.6915 0.1206 0.0779]);

% Uebertragungsfunktionen
figure(1)
bode(k*G0, {1e-3 1e3})

grid on

end