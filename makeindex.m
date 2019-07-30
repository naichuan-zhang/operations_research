function [ ind] = makeindex( Tin)
%MAKEINDEX Calculates permutation of cols for colsortjk
%   Detailed explanation goes here

[m,n]=size(Tin);
ind=zeros(1,n);
ind(1)=1;
delta=m-1;
nbc=1;
for i=2:n
    Ti=Tin(:,i);
    if Ti(1)==0 && sum(abs(Ti))==1
        r=find(Ti==1);
        ind(r+delta)=i;
    else % non-basic col
        ind(1+nbc)=i;
        nbc=nbc+1;
    end
    
end