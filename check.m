function check(original,entrenamiento,prueba,graficar)
clases = 1:11;
index_class = length(original(1,:)); %Índice para extraer la clase

[orig_count] = histc(original(:,index_class),clases);
normoc=orig_count/sum(orig_count); %Cuentas normalizadas
[trcount] = histc(entrenamiento(:,index_class),clases);
normtrc=trcount/sum(trcount);

[testcount] = histc(prueba(:,index_class),clases);
normtestc=testcount/sum(testcount);



if graficar
%    
%     figure(1)
%     bar(clases,cuentas_completa_norm,'histc')
%     title('Base de datos completa')
%     xlabel('Caso')
%     ylabel('Frecuencia Relativa')
% 
%     figure(2)
%     bar(clases,cuentas_entrenamiento_norm,'histc')
%     title('Base de datos de entrenamiento')
%     xlabel('Caso')
%     ylabel('Frecuencia Relativa')
% 
%     figure(3)
%     bar(clases,cuentas_prueba_norm,'histc')
%     title('Base de datos de prueba')
%     xlabel('Caso')
%     ylabel('Frecuencia Relativa')
%    

    figure(1)
    plot(clases,normoc,clases,normtrc,'+',clases,normtestc,'*')
    axis([1 11 0 0.2])
end

end