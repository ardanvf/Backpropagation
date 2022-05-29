load('dataset.mat');
load('target.mat');

net = newff(minmax(dataset),[2 1],{'logsig','purelin'},'traingdx');
net.IW{1,1} = [-7.62 ,0.97, -2.60, -9.55; -5.83, -3.41, 3.08, -4.44];
net.LW{2,1} = [-2.40, -2.67];
net.b{1,1} = [9.38; -2.7];
net.b{2,1} = 5.93;

net.performFcn = 'mse';
net.trainParam.goal = 0.01;
net.trainParam.show = 20;
net.trainParam.epochs = 1000;
net.trainParam.mc = 0.95;
net.trainParam.lr = 0.1;

[~,N] = size(dataset);

[net_result, tr, Y, E] = train(net, dataset,target);