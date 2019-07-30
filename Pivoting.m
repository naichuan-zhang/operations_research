function Tout=Pivoting(T)

% Dual Simplex Method

[~,pos]=min(T(2:end,1));pos=pos+1;

r=pos;
negcols=find(T(r,2:end)<0);
negcols=negcols+1;
colrat=T(1,negcols)./T(r,negcols);
[~,pos]=max(colrat);
c=negcols(pos);

Tout=Pivot(T,r,c);