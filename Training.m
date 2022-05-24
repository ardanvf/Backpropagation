load('data_latih.mat');
load('target_latih.mat');
hidden_layer = 6;
output = 1;

net = newff(minmax(data_latih), [hidden_layer, output], {'logsig','logsig'}, 'traingd');
net.performFcn = 'mse';

net.trainparam.epochs = 1;
net.trainparam.goal = 0.001;
net.trainparam.lr = 0.2;

net = init(net);
[net, tr] = train(net, data_latih, target_latih);
