t= out.time.data;
%%
out10 = out.out10;
out20 = out.out20;
out30 = out.out30;

%%
figure(1)

plot(t,out10)
hold on
plot(t,out20)
plot(t,out30)


plot([0,84],[10-10*0.02,10-10*0.02], 'k--')
plot([84,84],[0,10-10*0.02], 'k--')

plot([0,400],[20-20*0.02,20-20*0.02], 'k--')
plot([400,400],[0,20-20*0.02], 'k--')

plot([0,950],[30-30*0.02,30-30*0.02], 'k--')
plot([950,950],[0,30-30*0.02], 'k--')



hold off
grid on
title('Simulación de la respuesta de la planta')

legend('hi=10cm','hi=20cm','hi=30cm')
ylim([0 40])
%%
Ts = 15;
input = out.input;
muestras = out.muestras;
data = iddata(muestras,input,15);
%%
%tiempo = DataEjercicio1EL4105S2.Tiempomin;
%u = DataEjercicio1EL4105S2.Entrada;
%y = DataEjercicio1EL4105S2.Salida;

%figure(2)
%plot(tiempo(1:100),u(1:100),tiempo(1:100),y(1:100))
%title('Extracto del comportamiento de entrada y salida del sistema')
%legend('Entrada','Salida')

