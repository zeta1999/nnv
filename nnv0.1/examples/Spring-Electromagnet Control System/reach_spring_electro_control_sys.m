load controller.mat;
load sysd.mat;

L1 = Layer(W{1,1}, b{1,1}, 'ReLU');
L2 = Layer(W{1,2}, b{1,2}, 'Linear');

NN_Controller = FFNN([L1 L2]); % feedforward neural network controller
Plant = DLinearODE(sysd.A, sysd.B, sysd.C, sysd.D, 0.1);
feedbackMap = [0;1]; % feedback map, y[k] and y[k-1]

ncs = NNCS(NN_Controller, Plant, feedbackMap); % the neural network control system

% initial set of state of the plant 
init_set = Polyhedron('lb', [0.8; -1], 'ub', [1; -0.8]);

% control input set: 0.99 m <= r <= 1 m
ref_inputSet = Polyhedron('lb', 0.99, 'ub', 1);

N = 5; % number of step


[Px, Py] = ncs.reachPolyhedron(init_set, ref_inputSet, N);


figure;
Px.plot;