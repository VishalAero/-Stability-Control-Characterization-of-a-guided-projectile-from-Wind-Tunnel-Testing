% 6680	5/7/2010 11:02:55 AM
% Bomb Model-II Body Alone Configuration
format long g

g = 9.81;
Cl = [];
Alpha = [];
C_m = [];

%Balance load matrix
CM = [63.080043	0.144499	-0.206795	1.354260	1.630051	4.275882
    -0.123649	150.309342	0.592082	-0.725847	0.030856	0.393628
    0.024098	-0.689773	151.831777	0.096597	-0.571799	-4.414537
    0.152944	-2.334107	0.037781	77.595997	0.445712	5.841784
    -0.006030	0.114642	-0.574072	-0.065800	79.176337	0.322466
    0.047415	0.466131	0.099431	0.208017	0.190935	44.877349 ];

% Model reference parameters
% Sref(sqm)	        Chord (m)	    Span (m)
Sref = 0.009677;	c = 0.111;	    b = 0.111;

% Moment reference point (nose)
% X (m)		Y (m)		Z (m)
% 0	        0	        0

% Balance center location
%X (m)		Y (m)		Z (m)
X =-0.465;	Y = 0;	    Z = 0;

% Nowind data
%     Ax		    N1		    N2		    S1		    S2		    Rm
NW = [-0.001023;    0.001298;	0.001474;	-0.000501;	-0.000191;	-0.000147];

for i = 1:3
if i == 1
%Data for Speed 1
DyHi = 974.329545;
%       Dyn. head	Pitch		Yaw		    Roll		Ax		    N1		    N2		    S1		    S2		    Rm
DSi = [ 974.329545	-9.947917	0.000000	0.000000	0.002673	-0.006420	0.005058	-0.001114	0.000491	-0.000003 %1
        974.329545	-8.052083	0.000000	0.000000	0.002539	-0.004903	0.004606	-0.000981	0.000274	-0.000041 %2
        974.329545	-6.052083	0.000000	0.000000	0.002434	-0.003329	0.003960	-0.000981	0.000253	-0.000068 %3
        974.329545	-4.062500	0.000000	0.000000	0.002377	-0.001724	0.003177	-0.000968	0.000107	-0.000071 %4
        974.329545	-2.052083	0.000000	0.000000	0.002325	-0.000170	0.002245	-0.000885	0.000153	-0.000090 %5
        974.329545	-0.052083	0.000000	0.000000	0.002249	0.001322	0.001340	-0.000831	0.000072	-0.000128 %6
        974.329545	0.052083	0.000000	0.000000	0.002201	0.001334	0.001344	-0.000864	0.000120	-0.000131 %7
        974.329545	1.947917	0.000000	0.000000	0.002324	0.002779	0.000499	-0.000783	0.000108	-0.000153 %8
        974.329545	3.947917	0.000000	0.000000	0.002385	0.004320	-0.000380	-0.000745	-0.000003	-0.000158 %9
        974.329545	5.947917	0.000000	0.000000	0.002458	0.005940	-0.001250	-0.000692	-0.000010	-0.000191 %10
        974.329545	7.947917	0.000000	0.000000	0.002611	0.007523	-0.001939	-0.000602	-0.000087	-0.000206 %11
        974.329545	9.947917	0.000000	0.000000	0.002765	0.009013	-0.002427	-0.000612	-0.000136	-0.000233 %12
        974.329545	11.947917	0.000000	0.000000	0.002850	0.010588	-0.002839	-0.000578	-0.000102	-0.000257 %13
        974.329545	13.947917	0.000000	0.000000	0.002862	0.012207	-0.003176	-0.000626	-0.000078	-0.000250 %14
        974.329545	15.937500	0.000000	0.000000	0.002895	0.013871	-0.003436	-0.000631	-0.000056	-0.000280 %15
        974.329545	17.937500	0.000000	0.000000	0.002860	0.015556	-0.003610	-0.000583	-0.000413	-0.000303 %16
        974.329545	19.947917	0.000000	0.000000	0.002808	0.017221	-0.003662	-0.000535	-0.000676	-0.000332 %17
        974.329545	21.947917	0.000000	0.000000	0.002689	0.018903	-0.003702	-0.000579	-0.000642	-0.000360 %18
        974.329545	23.947917	0.000000	0.000000	0.002521	0.020650	-0.003677	-0.000634	-0.000730	-0.000392 %19
        974.329545	25.947917	0.000000	0.000000	0.002294	0.022447	-0.003645	-0.000538	-0.001077	-0.000409];%20
end
if i == 2
%Data for Speed 2
DyHi = 1499.272727;
%       Dyn. head	Pitch		Yaw		    Roll		Ax		    N1		    N2		    S1		    S2		    Rm
DSi = [ 1499.272727	-9.947917	0.000000	0.000000	0.004587	-0.010519	0.006953	-0.001412	0.000946	-0.000015
        1499.272727	-8.052083	0.000000	0.000000	0.004404	-0.008223	0.006295	-0.001239	0.000592	-0.000048
        1499.272727	-6.052083	0.000000	0.000000	0.004210	-0.005792	0.005321	-0.001273	0.000473	-0.000069
        1499.272727	-4.062500	0.000000	0.000000	0.004093	-0.003315	0.004037	-0.001198	0.000382	-0.000141
        1499.272727	-2.052083	0.000000	0.000000	0.004003	-0.000914	0.002615	-0.001125	0.000283	-0.000183
        1499.272727	-0.052083	0.000000	0.000000	0.003968	0.001367	0.001249	-0.000983	0.000286	-0.000204
        1499.272727	0.052083	0.000000	0.000000	0.003890	0.001442	0.001190	-0.001057	0.000316	-0.000323
        1499.272727	1.947917	0.000000	0.000000	0.004016	0.003680	-0.000143	-0.000923	0.000177	-0.000222
        1499.272727	3.947917	0.000000	0.000000	0.004096	0.006063	-0.001533	-0.000902	0.000197	-0.000269
        1499.272727	5.947917	0.000000	0.000000	0.004177	0.008541	-0.002856	-0.000859	0.000128	-0.000303
        1499.272727	7.947917	0.000000	0.000000	0.004368	0.010913	-0.003881	-0.000755	-0.000020	-0.000341
        1499.272727	9.947917	0.000000	0.000000	0.004593	0.013239	-0.004599	-0.000664	-0.000136	-0.000388
        1499.272727	11.947917	0.000000	0.000000	0.004712	0.015682	-0.005213	-0.000669	-0.000025	-0.000397
        1499.272727	13.947917	0.000000	0.000000	0.004752	0.018147	-0.005713	-0.000716	0.000002	-0.000445
        1499.272727	15.937500	0.000000	0.000000	0.004759	0.020667	-0.006095	-0.000655	-0.000346	-0.000474
        1499.272727	17.937500	0.000000	0.000000	0.004694	0.023277	-0.006399	-0.000509	-0.000902	-0.000543
        1499.272727	19.947917	0.000000	0.000000	0.004571	0.025917	-0.006611	-0.000528	-0.001019	-0.000597
        1499.272727	21.947917	0.000000	0.000000	0.004370	0.028594	-0.006665	-0.000663	-0.001004	-0.000622
        1499.272727	23.947917	0.000000	0.000000	0.004114	0.031377	-0.006636	-0.000697	-0.001170	-0.000684
        1499.272727	25.947917	0.000000	0.000000	0.003761	0.034218	-0.006530	-0.000258	-0.002047	-0.000730 ];
end
if i == 3
% Data for Speed 3
DyHi = 2172.920455;
%       Dyn. head	Pitch		Yaw		    Roll		Ax		    N1		    N2		    S1		    S2		    Rm
DSi = [ 2172.920455	-9.947917	0.000000	0.000000	0.006916	-0.015706	0.009377	-0.001872	0.001380	-0.000105 
        2172.920455	-8.052083	0.000000	0.000000	0.006651	-0.012341	0.008425	-0.001672	0.001040	-0.000155
        2172.920455	-6.052083	0.000000	0.000000	0.006393	-0.008838	0.006984	-0.001653	0.000856	-0.000195
        2172.920455	-4.062500	0.000000	0.000000	0.006240	-0.005337	0.005156	-0.001549	0.000713	-0.000230
        2172.920455	-2.062500	0.000000	0.000000	0.006160	-0.001847	0.003104	-0.001436	0.000613	-0.000284
        2172.920455	-0.052083	0.000000	0.000000	0.006067	0.001535	0.001050	-0.001293	0.000493	-0.000336
        2172.920455	0.052083	0.000000	0.000000	0.006014	0.001550	0.000960	-0.001306	0.000575	-0.000463
        2172.920455	1.947917	0.000000	0.000000	0.006095	0.004862	-0.000972	-0.001223	0.000523	-0.000381
        2172.920455	3.947917	0.000000	0.000000	0.006189	0.008310	-0.002973	-0.001107	0.000492	-0.000439
        2172.920455	5.937500	0.000000	0.000000	0.006286	0.011904	-0.004877	-0.001010	0.000424	-0.000466
        2172.920455	7.947917	0.000000	0.000000	0.006565	0.015344	-0.006404	-0.000883	0.000258	-0.000525
        2172.920455	9.947917	0.000000	0.000000	0.006871	0.018639	-0.007381	-0.000782	0.000164	-0.000568
        2172.920455	11.947917	0.000000	0.000000	0.006984	0.022162	-0.008318	-0.000734	0.000160	-0.000631
        2172.920455	13.947917	0.000000	0.000000	0.007035	0.025766	-0.009044	-0.000795	-0.000042	-0.000673
        2172.920455	15.937500	0.000000	0.000000	0.007042	0.029433	-0.009589	-0.000700	-0.000477	-0.000759
        2172.920455	17.937500	0.000000	0.000000	0.006945	0.033266	-0.010124	-0.000538	-0.001151	-0.000813
        2172.920455	19.947917	0.000000	0.000000	0.006745	0.037188	-0.010493	-0.000556	-0.001314	-0.000870
        2172.920455	21.947917	0.000000	0.000000	0.006498	0.041137	-0.010671	-0.000674	-0.001308	-0.000959
        2172.920455	23.937500	0.000000	0.000000	0.006105	0.045155	-0.010599	-0.000880	-0.001188	-0.001035
        2172.920455	25.947917	0.000000	0.000000	0.005570	0.049182	-0.010379	-0.000121	-0.002440	-0.001125 ];

end
Le = 0.884;
% Transformation Matrix from CG to Body center
x = 0.2826; % Xnp --> 0.315 (Neutral point from nose)
y = 0;
z = 0;
TM =[-1,  0,  0,  0,  0,  0
      0,  1,  0,  0,  0,  0
      0,  0,  -1, 0,  0,  0
      0,  -z, y,  1,  0,  0
      z,  0,  -x, 0,  1,  0
      -y, x,  0,  0,  0,  1]; % Doubt


    for j = 1:20
        aj = [DSi(j,5) ; DSi(j,6) ; DSi(j,7) ; DSi(j,8) ; DSi(j,9) ; DSi(j,10)];
        % Convert the obtained normalized voltage signals to kg
        Aj = CM * (aj-NW);
        % Calculate the forces and moments about the balance center
        fm = [Aj(1) ; (Aj(4)+Aj(5)) ; (Aj(2)+Aj(3)) ; Aj(6) ; (Aj(2)-Aj(3))*0.065 ; (Aj(4)-Aj(5))*0.065].*g;
        % Transform the forces and moments to the body axis
        FM = [Aj(1) ; (Aj(4)+Aj(5)) ; (Aj(2)+Aj(3)) ; Aj(6) ; (Aj(2)-Aj(3))*0.065 ; (Aj(4)-Aj(5))*0.065].*g;
        % Transform the forces and moments to the C.G of the flight vehicle
        FMcg = TM * FM;
        % The variation of longitudinal force and moment coefficients
        Cf = (1/(DyHi*Sref)).*[FMcg(1:3)];
        Cm = (1/(DyHi*Sref*Le)).*[FMcg(4:6)];
        
        Pitch = (DSi(j,2));
        % Variation of Aerodynamic force coefficients with angle of attack
        Aero_TM = [ sind(Pitch)   0   -cosd(Pitch)
                   -cosd(Pitch)   0   -sind(Pitch)
                   0              1   0];
        
        Aero_Coeff = Aero_TM*Cf;
        
        % Recording The Data
        Alpha = [Alpha; Pitch'];
        Cl  = [Cl; Aero_Coeff'];
        C_m = [C_m; Cm'];

    end
end

        A1= Alpha(1:20);
        B1= Cl(1:20,1);
        C1= Cl(1:20,2);
        D1= C_m(1:20,2);
        A2= Alpha(21:40);
        B2= Cl(21:40,1);
        C2= Cl(21:40,2);
        D2= C_m(21:40,2);
        A3= Alpha(41:60);
        B3= Cl(41:60,1);
        C3= Cl(41:60,2);
        D3= C_m(41:60,2);
        
        E1 = B1./C1;
        E2 = B2./C2;
        E3 = B3./C3;
        
        F1 = B1.^2;
        F2 = B2.^2;
        F3 = B3.^2;

% Calculating Slope of Moment Coefficient
%For V1
        cc1=0;
        Cm_Alpha1i = 0;
        Cl_Alpha1i = 0;
        k1_i=0;
        for l = 2:1:20
        D_Alpha1 =  A1(l)-A1(l-1) ;
        D_Cl1 = B1(l)-B1(l-1);
        D_Cm1 = D1(l)-D1(l-1);
        D_Cd1 = C1(l)-C1(l-1);
        D_Cl_2= F1(l)-F1(l-1);
        Cm_alpha1 = D_Cm1/D_Alpha1;
        Cl_alpha1 = D_Cl1/D_Alpha1;
        k1 = D_Cd1/D_Cl_2;
        Cl_Alpha1i = Cl_Alpha1i + Cl_alpha1;
        Cm_Alpha1i = Cm_Alpha1i + Cm_alpha1;
        k1_i = k1_i + k1;
        cc1 = cc1+1;
        end        
        F_Cm_Alpha1 = Cm_Alpha1i/cc1;
        F_Cl_Alpha1 = Cl_Alpha1i/cc1;
        F_k1 = k1_i/cc1;
        F_Cl_01 = (B1(7)+B1(6))./2;
        F_Cd_01 = (C1(7)+C1(6))./2;
        F_Cm_01 = (D1(6)+D1(7))./2;
        

        disp('For V1 = 40 m/s')
        disp('Average value of Cl_alpha')
        disp(F_Cl_Alpha1)
        disp('Average value of Cm_alpha')
        disp(F_Cm_Alpha1)
        disp('Average value of Cl_0')
        disp(F_Cl_01)
        disp('Average value of Cd_0')
        disp(F_Cd_01)
        disp('Average value of Cm_0')
        disp(F_Cm_01)
        disp('Average value of Oswald Factor')
        disp(k1)
    
%For V2
        cc2=0;
        Cm_Alpha2i = 0;
        Cl_Alpha2i = 0;
        k2_i=0;
        for l = 2:1:20
        D_Alpha2 =  A2(l)-A2(l-1) ;
        D_Cl2 = B2(l)-B2(l-1);
        D_Cm2 = D2(l)-D2(l-1);
        D_Cd2 = C2(l)-C2(l-1);
        D_Cl_22= F2(l)-F2(l-1);
        Cm_alpha2 = D_Cm2/D_Alpha2;
        Cl_alpha2 = D_Cl2/D_Alpha2;
        k2 = D_Cd2/D_Cl_22;
        Cl_Alpha2i = Cl_Alpha2i + Cl_alpha2;
        Cm_Alpha2i = Cm_Alpha2i + Cm_alpha2;
        k2_i = k2_i + k2;
        cc2 = cc2+1;
        end
        F_Cm_Alpha2 = Cm_Alpha2i/cc2;
        F_Cl_Alpha2 = Cl_Alpha2i/cc2;
        F_k2 = k2_i/cc2;
        F_Cl_02 = (B2(7)+B2(6))./2;
        F_Cd_02 = (C2(7)+C2(6))./2;
        F_Cm_02 = (D2(6)+D2(7))./2;
        disp('For V2 = 50 m/s')
        disp('Average value of Cl_alpha')
        disp(F_Cl_Alpha2)
        disp('Average value of Cm_alpha')
        disp(F_Cm_Alpha2)
        disp('Average value of Cl_0')
        disp(F_Cl_02)
        disp('Average value of Cd_0')
        disp(F_Cd_02)
        disp('Average value of Cm_0')
        disp(F_Cm_02)
        disp('Average value of Oswald Factor')
        disp(k2)
%For V3
        cc3=0;
        Cm_Alpha3i = 0;
        Cl_Alpha3i = 0;
        k3_i=0;
        for l = 2:1:20
        D_Alpha3 =  A3(l)-A3(l-1) ;
        D_Cl3 = B3(l)-B3(l-1);
        D_Cm3 = D3(l)-D3(l-1);
        D_Cd3 = C3(l)-C3(l-1);
        D_Cl_23= F3(l)-F3(l-1);
        k3 = D_Cd3/D_Cl_23;
        Cm_alpha3 = D_Cm3/D_Alpha3;
        Cl_alpha3 = D_Cl3/D_Alpha3;
        Cl_Alpha3i = Cl_Alpha3i + Cl_alpha3;
        Cm_Alpha3i = Cm_Alpha3i + Cm_alpha3;
        k3_i = k3_i + k3;
        cc3 = cc3+1;
        end
        F_Cm_Alpha3 = Cm_Alpha3i/cc3;
        F_Cl_Alpha3 = Cl_Alpha3i/cc3;
        F_k3 = k3_i/cc3;
        F_Cl_03 = (B3(7)+B3(6))./2;
        F_Cd_03 = (C3(7)+C3(6))./2;
        F_Cm_03 = (D3(6)+D3(7))./2;
        disp('For V3 = 60 m/s')
        disp('Average value of Cl_alpha')
        disp(F_Cl_Alpha3)
        disp('Average value of Cm_alpha')
        disp(F_Cm_Alpha3)
        disp('Average value of Cl_0')
        disp(F_Cl_03)
        disp('Average value of Cd_0')
        disp(F_Cd_03)
        disp('Average value of Cm_0')
        disp(F_Cm_03)
        disp('Average value of Oswald Factor')
        disp(k3)

 figure(1)
subplot(4,1,1)        
        hold on
        plot(A1,B1,'r-*',A2,B2,'g--o',A3,B3,'b-+')   
        hold off       
        %xlabel('\alpha')
        ylabel('Cl')
        title('C_l vs \alpha')
        legend('V1=40m/s','V2=50m/s','V3=60m/s')
        grid on
subplot(4,1,2)
        hold on
        plot(A1,C1,'r-*',A2,C2,'g--o',A3,C3,'b-+')   
        hold off       
        %xlabel('\alpha')
        ylabel('C_d')
        title('C_d vs \alpha')
        legend('V1=40m/s','V2=50m/s','V3=60m/s')
        grid on
subplot(4,1,3)
        hold on
        plot(A1,E1,'r-*',A2,E2,'g--o',A3,E3,'b-+')   
        hold off       
        %xlabel('\alpha')
        ylabel('C_l/C_d')
        title('C_l/C_d vs \alpha')
        legend('V1=40m/s','V2=50m/s','V3=60m/s')
        grid on
subplot(4,1,4)
        hold on
        plot(A1,D1,'r-*',A2,D2,'g--o',A3,D3,'b-+')   
        hold off
        xlabel('\alpha')
        ylabel('C_m')
        %%%ylim([-2 2])
        title('C_m vs \alpha')
        legend('V1=40m/s','V2=50m/s','V3=60m/s')
        grid on


figure(2)
    hold on
    plot(F1,C1,'r-*',F2,C2,'g--o',F3,C3,'b-+')   
    hold off       
    xlabel('C_l^2')
    ylabel('C_d')
    title('C_d vs C_l^2')
    legend('V1=40m/s','V2=50m/s','V3=60m/s')
    grid on 

figure(3)        
        hold on
        plot(C1,B1,'r-*',C2,B2,'g--o',C3,B3,'b-+')   
        hold off       
        xlabel('C_d')
        ylabel('C_l')
        title('C_l vs C_d')
        legend('V1=40m/s','V2=50m/s','V3=60m/s')
        grid on

