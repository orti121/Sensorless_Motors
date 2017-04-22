function check(original,entrenamiento,prueba,graficar)
clases = 1:11;
index_class = length(original(1,:)); %Índice para extraer la clase

[orig_count] = histc(original(:,index_class),clases);
normoc=orig_count/sum(orig_count); %Cuentas normalizadas

[trcount] = histc(entrenamiento(:,index_class),clases);
normtrc=trcount/sum(trcount);
trerr=abs((normoc-normtrc)./normoc*100);

[testcount] = histc(prueba(:,index_class),clases);
normtestc=testcount/sum(testcount);
testerr=abs((normoc-normtestc)./normoc*100);

if graficar

    figure()
    plot(clases,trerr,'*-',clases,testerr,'o-')
    axis([1 11 0 10])
    title('Chequear proporciones')
    xlabel('Clase')
    ylabel('Diferencia porcentual c/r a proporción original[%]')
    legend('Entrenamiento + Validación','Test')
end

end