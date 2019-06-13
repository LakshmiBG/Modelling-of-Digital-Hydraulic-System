%system parameters
Controller.ts = 20e-3;      %.. s
Load.m = 55;                %kg
g = -9.81;                  %m/s^2

%Pressures
PS = 9e6;                   %Supply pressure..Pa
pT = 0;                     %Tank Pressure..Pa
Cyl.pA_init = 6e6;          %Pa
Cyl.pB_init = 8e6;          %Pa
ptr = 0.1e6;                % Transition Pressure.. Pa
mindp = 1e5;                %Pa

%Orifice
Kv = 2.5e-7;                % B-chamber port flow co-effecient

%valve parameters
Valve.switch_o_delay = 12e-3*ones(1,N);  %  ..in s
Valve.switch_c_delay = 12e-3*ones(1,N);  %  ..in s
Valve.switch_o_time = 3e-3;              %  .. in s
Valve.switch_c_time = 3e-3;              % .. in s

%Cylinder
Cyl.D = 32e-3;              %m
Cyl.d = 18e-3;              %m
Cyl.x_max = 400e-3;         %m
Cyl_Dead_Vol = 2e-4;        %m3
Cyl.End_K = 1e7;
CylA.A = (pi*(Cyl.D)^2)/4;  %m2
Cyl.B = 1100e6;             %Pa
Cyl.x_init = 50e-3;         %m

%Friction
Fric.b = 1600;              % Cylinder viscous friction [Ns/m] 
Fric.Fc = 300;              % Cylinder Coulomb’s friction [N] 
Fric.Fs = 600;              % Static friction [N] 
Fric.vtol = 0.005;          % Velocity for minimum friction [m/s] 
Fric.m_est = Load.m;        % Load mass estimate 
Fric.pre_slide = 0.2e-3;    % Bending of the seal

%Polynomial trajectory
t_values = [1 2 3 5 6 7 8 9]*1.5; 
x_values = [0 0.075 0.075 0 0 0.3 0.3 0 0] + Cyl.x_init; 
dt_values = [1 1 1 1 1 1 1 1]*1.5; 
ts = 0.01;                  % Sample time 
poly_degree = 5;
[t_ref,x_ref,v_ref] = poly_traj_iha2576(t_values,dt_values,x_values,ts,poly_degree);

sim('project_work')
run ('plots')