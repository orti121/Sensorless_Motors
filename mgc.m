function [mx, train, test]=mgc(db,ratio)
mx=mix(db);
[train,test]=gen(mx,ratio);
check(mx,train,test,1)
end