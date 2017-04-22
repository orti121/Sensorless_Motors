function testnet(net,testin,testarg)

restest=net(testin); %resultado al ingresar el conjunto de test

plotconfusion(testarg,restest)

end