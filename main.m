clear
load('def_data.mat')
[tvin, tvtarg]=onehot(trval);
[testin, testarg]=onehot(test);

[net,tr]=trnet(23,tvin,tvtarg);
testnet(net,testin,testarg);
