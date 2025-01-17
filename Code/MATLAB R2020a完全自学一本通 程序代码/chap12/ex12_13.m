function F = ex12_13(K,A,B,C)
F = sort(eig(A+B*K*C)); % Evaluate objectives

A = [-0.5 0 0; 0 -2 10; 0 1 -2];
B = [1 0; -2 2; 0 1];
C = [1 0 0; 0 0 1]; 
K0 = [-1 -1; -1 -1];						% Initialize controller matrix
goal = [-5 -3 -1]; 						% Set goal values for the eigenvalues
weight = abs(goal);						% Set weight for same percentage
lb = -4*ones(size(K0));					% Set lower bounds on the controller
ub = 4*ones(size(K0));					% Set upper bounds on the controller
options = optimset('Display','iter');	% Set display parameter
[K,fval,attainfactor] = fgoalattain(@(K) ex10_14(K,A,B,C),...
 K0,goal,weight,[],[],[],[],lb,ub,[],options)
