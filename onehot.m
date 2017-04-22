function [input, target]=onehot(db)
% Separa en input y target codificado en onehot, y los transpone para su
% uso en la red.

basesize=length(db(:,1));
class_index=length(db(1,:));
vectorsize=max(db(:,class_index));

input=transpose(db(:,1:class_index-1));
target=zeros(basesize,vectorsize);

% %newbase=zeros(size(db)+[0 vectorsize-1]);
% 
% for i=1:basesize
%     class=db(i,class_index);
%     newbase(i,1:class_index-1)=db(i,1:class_index-1);
%     newbase(i,class_index-1+class)=1; 
% end
    
for i=1:basesize
    class=db(i,class_index);
    target(i,class)=1;
end

target=transpose(target);

end

