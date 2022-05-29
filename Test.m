load('testing.mat');

bobot_hidden = net_result.IW{1,1};
bobot_result = net_result.LW{2,1};
bias_hidden = net_result.b{1,1};
bias_output = net_result.b{2,1};
iterate = tr.num_epochs;
output = Y;
err = E;
error_MSE = (1/N)*sum(err.^2);

result_testing = round(sim(net_result, testing));
disp(result_testing);