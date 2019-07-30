function Tout=Pivot(T,row,col)


% PIVOT
% Input: T is a Simplex Tableau in Standard Form
%        pivot row & column indices.
%        Number the rows & columns from 1 (incl top row & LH column).
% Output: Tout is result of pivoting on T using specified pivot.
%
% Example: T1=Pivot(T0,row_num,col_num);


[m,~]=size(T);
p=T(row,col);
fprintf('Row %i and Col %i selected.\n',row,col)
T(row,:)=T(row,:)/p;
for i=1:row-1
    p=T(i,col);
    T(i,:)=T(i,:)-p*T(row,:);
end;
for i=row+1:m
    p=T(i,col);
    T(i,:)=T(i,:)-p*T(row,:);
end;
Tout=T;
