function [net,tr]=trnet(hiddenqty,tvin,tvtarg)

net=patternnet(hiddenqty);
net.divideParam.trainRatio=0.8;
net.divideParam.valRatio=0.2;
net.divideParam.testRatio=0.0;

[net, tr]=trainlm(net,tvin,tvtarg);


end