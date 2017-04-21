function [entrenamiento,prueba]=gen(mix,razon_entrenamiento)
%Recibe la base de datos mezclada, y la separa para generar los
%conjuntos de entrenamiento y prueba seg�n la proporci�n indicada.
largo=length(mix(:,1));
index_sup_train=floor(largo*razon_entrenamiento);
entrenamiento=mix(1:index_sup_train,:);
prueba=mix(index_sup_train+1:largo,:);
