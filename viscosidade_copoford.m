% Programa para determinar a viscosidade dinâmica através do copo ford
% Desenvolvido por Paulo Orestes Formigoni nov/2022
% profpauloformigoni@gmail.com
clc
clear all
densidade = 854;        % Densidade do óleo Hidra 68
visc_dinamica=[];
tipo_copo = 4 ;         % Medida do orificio do copo ford (1, 2, 3, 4 ou 5mm): ")
% T1=(((8.60+4.41)/2)+((8.32+4.57)/2))/2;         % Temperatura média da coleta 1
% t1= (84.16-46.83);                              % Intervalo de Tempo da coleta 1
% T2=(((9.34+5.12)/2)+((9.04+4.98)/2))/2;         % Temperatura média da coleta 2
% t2= (41.36-3.70);                               % Intervalo de Tempo da coleta 2
% T3=(((10.99+10.74)/2)+((10.56+10.52)/2))/2;     % Temperatura média da coleta 3
% t3= (73.30-37.33);                              % Intervalo de Tempo da coleta 3
% T4=(((11.64+10.98)/2)+((11.31+10.82)/2))/2;     % Temperatura média da coleta 4
% t4= (147.76-111.26);                            % Intervalo de Tempo da coleta 4
T5=(((12.49+11.47)/2)+((12.08+11.31)/2))/2;     % Temperatura média da coleta 5
t5= (225.66-189.03);                            % Intervalo de Tempo da coleta 5
T6=(((13.85+12.58)/2)+((13.20+12.14)/2))/2;     % Temperatura média da coleta 6
t6= (302.03-264.26);                            % Intervalo de Tempo da coleta 6
T7=(((14.48+13.63)/2)+((14.51+13.66)/2))/2;     % Temperatura média da coleta 7
t7= (62.06-30.63);                              % Intervalo de Tempo da coleta 7
T8=(((14.65+13.93)/2)+((14.52+13.72)/2))/2;     % Temperatura média da coleta 8
t8= (117.50-83.33);                             % Intervalo de Tempo da coleta 8
T9=(((15.07+14.46)/2)+((14.90+14.27)/2))/2;     % Temperatura média da coleta 9
t9= (196.73-164.56);                            % Intervalo de Tempo da coleta 9
T10=(((16.07+15.17)/2)+((15.82+14.99)/2))/2;    % Temperatura média da coleta 10
t10= (268.40-235.80);                           % Intervalo de Tempo da coleta 10
T11=(((16.28+15.96)/2)+((16.27+15.84)/2))/2;    % Temperatura média da coleta 11
t11= (61.33-30.56);                             % Intervalo de Tempo da coleta 11
T12=(((16.35+16.01)/2)+((16.31+16.01)/2))/2;    % Temperatura média da coleta 12
t12= (124.30-94.33);                            % Intervalo de Tempo da coleta 12
T13=(((16.73+16.28)/2)+((16.53+16.19)/2))/2;    % Temperatura média da coleta 13
t13= (193.83-163.73);                           % Intervalo de Tempo da coleta 13
T14=(((17.25+17.09)/2)+((17.19+17.04)/2))/2;    % Temperatura média da coleta 14
t14= (59.16-30.36);                             % Intervalo de Tempo da coleta 14
T15=(((17.42+17.10)/2)+((17.39+17.09)/2))/2;    % Temperatura média da coleta 15
t15= (126.06-97.53);                            % Intervalo de Tempo da coleta 15
T16=(((17.67+17.35)/2)+((17.51+17.19)/2))/2;    % Temperatura média da coleta 16
t16= (186.63-157.76);                           % Intervalo de Tempo da coleta 16
T17=(((18.19+17.96)/2)+((18.17+17.89)/2))/2;    % Temperatura média da coleta 17
t17= (080.03-052.76);                           % Intervalo de Tempo da coleta 17
T18=(((18.24+18.11)/2)+((18.20+18.04)/2))/2;    % Temperatura média da coleta 18
t18= (132.03-104.76);                           % Intervalo de Tempo da coleta 18
T19=(((18.47+18.23)/2)+((18.35+18.20)/2))/2;    % Temperatura média da coleta 19
t19= (191.16-164.26);                           % Intervalo de Tempo da coleta 19
T20=(((18.71+18.55)/2)+((18.65+18.47)/2))/2;    % Temperatura média da coleta 20
t20= (053.10-026.23);                           % Intervalo de Tempo da coleta 20
T21=(((18.81+18.74)/2)+((18.77+18.69)/2))/2;    % Temperatura média da coleta 21
t21= (111.96-085.50);                           % Intervalo de Tempo da coleta 21
T22=(((19.01+18.87)/2)+((18.91+18.81)/2))/2;    % Temperatura média da coleta 22
t22= (166.50-140.30);                           % Intervalo de Tempo da coleta 22
T23=(((19.05+19.00)/2)+((19.03+18.93)/2))/2;    % Temperatura média da coleta 23
t23= (250.66-224.70);                           % Intervalo de Tempo da coleta 23
T24=(((19.21+19.21)/2)+((19.13+19.12)/2))/2;    % Temperatura média da coleta 24
t24= (302.70-277.00);                           % Intervalo de Tempo da coleta 24
T25= 20;                                        % Temperatura média da coleta 25
t25= ((54.86-32.96)+(26.06-03.50)+(56.60-32.66))/3;                             % Intervalo de Tempo da coleta 25


% T = [T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15 T16 T17 T18 T19 T20 T21 T22 T23 T24 T25];
% t = [t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25];
T = [T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15 T16 T17 T18 T19 T20 T21 T22 T23 T24 T25];
t = [t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25];

for (cont=5:25)
if tipo_copo==1         % Escolha do tipo de copo
        vis_copo_ford = 0.49*(t-35);            % Fórmula para calcular a viscosidade cinemática em cSt
    elseif tipo_copo==2
        visc_copo_ford = 0.49*(t-35);           % Fórmula para calcular a viscosidade cinemática em cSt
    elseif tipo_copo==3
        visc_copo_ford = 1.44*(t-18);           % Fórmula para calcular a viscosidade cinemática em cSt
    elseif tipo_copo==4
        visc_copo_ford = 3.85*(t-4.49);         % Fórmula para calcular a viscosidade cinemática em cSt
    elseif tipo_copo==5 
        visc_copo_ford = 12.1*(t-2);            % Fórmula para calcular a viscosidade cinemática em cSt
    else disp('Você digitou número errado, desculpe, tente de novo')
end


visc_cinematica =  visc_copo_ford * 1e-6;       % Fórmula para converter cSt em m²/s
visc_dinamica=visc_cinematica * densidade;    % Conversão de viscosidade cinemática em dinâmica
% X = ['A viscosidade dinâmica do fluido é: ',num2str(visc_dinamica),' Pa.s'];
% disp(X)

end
TT = [10:1:26];
 coef = polyfit(T,visc_dinamica,1);
 m = coef (1);
 b = coef (2);
 regressao = m*TT+b;


 figure (1)
        
        plot(T, visc_dinamica, ':rs','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','r')
        hold on
        plot(TT, regressao, '-bs','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','b')
        %plot(T, visc_us_media, ':gs','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','g')
        title('Hidra 68')
        xlabel('Temperatura (ºC)')
        ylabel('Viscosidade (Pa.s)')
        grid on;
        legend('Viscosímetro Copo Ford','\eta = -0.0054.T + 0.1721')
        xmin=10; % ajusta as coordenadas na posição
        xmax=28;
        ymin=0.01;
        ymax=0.12; 
        axis([xmin xmax ymin ymax])
        hold off