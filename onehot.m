function [newbase]=onehot(db)
basesize=length(db(:,1));
class_index=length(db(1,:));
vectorsize=max(db(:,class_index));

newbase=zeros(size(db)+[0 vectorsize-1]);

for i=1:basesize
    class=db(i,class_index);
    newbase(i,1:class_index-1)=db(i,1:class_index-1);
    newbase(i,class_index-1+class)=1; 
end
    
end