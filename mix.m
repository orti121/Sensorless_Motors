function mix=mix(database)
%Entrega la base de datos con sus filas reordenadas aleatoriamente.
random_list=randperm(length(database(:,1))); %Lista con valores de 1 a la cantidad de muestras, ordenadas aleatoriamente.
revuelta=zeros(size(database)); %Inicializaci�n de la matriz de llegada.
for i=1:1:length(random_list)
    indice=random_list(i); %Fila de la base original que ser� guardada en el lugar i.
    revuelta(i,:)=database(indice,:);
end
mix=revuelta;