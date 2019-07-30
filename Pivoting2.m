function Tout=Pivoting2(T)

% Simplex Method

[~,pos]=min(T(1,2:end));pos=pos+1;

c=pos;
posrows=find(T(2:end,c)>0);
posrows=posrows+1;
colrat=T(posrows,1)./T(posrows,c);
[~,pos]=min(colrat);
r=posrows(pos);

Tout=Pivot(T,r,c);
