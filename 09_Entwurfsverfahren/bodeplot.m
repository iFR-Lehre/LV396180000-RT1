function bodeplot(k,Ti,Td)

s = tf('s');

% Uebertragungsfunktionen
figure(1)
bode(k*(1 + 1/(Ti*s) + Td*s)*tf([0 0 8.2631 1.6702],[1 0.6915 0.1206 0.0779]), {1e-3 1e3})

grid on

end