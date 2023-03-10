model model1
Real a = 0.27;
Real b = 0.068;
Real c = 0.37;
Real d = 0.064;
Real x (start = 9);
Real y (start = 29);
equation
der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;
annotation(experiment(StartTime=0, StopTime=100, Tolerance=1e-6, Interval=0.05));
end model1;
