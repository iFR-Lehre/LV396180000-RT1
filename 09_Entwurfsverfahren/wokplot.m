function wokplot(k,Ti,Td)

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
rlocus(G0)
r = rlocus(G0,k);

hold on
plot(r,'kp','MarkerFaceColor','k')
hold off

grid on
axis equal

end