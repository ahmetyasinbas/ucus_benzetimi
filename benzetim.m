clear , clc
format long
x = 0; %%m
y = 0; %%m
z = 0; %%m
v0 = 100; %%m/s
g = 9.801;%%m/s^2
zaman_adimi = 0.01; %%s
aci = 70; %%derece
ucus_zamani = (2*v0*sind(aci))/(g);
t = [0:zaman_adimi:ucus_zamani];
t(length(t)) = ucus_zamani;
vx = v0*cosd(aci);
vz = linspace(v0,v0,length(t))*sind(aci)-g*t;
tepe_noktasi_yukseklik = (v0*sind(aci))^2/(2*g);
tepe_noktasi_zaman = (v0*sind(aci))/g;
for i = 1:length(t)
    if round(t(i),2) == round(tepe_noktasi_zaman,2)
        tepe_noktasi_bileske_hiz = sqrt((vx)^2+(vz(i))^2);
    else
    end
end
x = v0*cosd(aci)*t;
z = v0*sind(aci)*t-0.5*g*t.^2;
son_konum = [x(length(t)),y,round(z(length(t)),2)];
son_hiz_bileske = sqrt((vx)^2+vz(length(t))^2);
son_ucus_yolu_aci_derecesi = atand(vz(length(t))/vx);
son_ucus_zamani = ucus_zamani;
plot(x,z)
grid on
xlabel('menzil(m)')
ylabel('yükseklik(m)')
