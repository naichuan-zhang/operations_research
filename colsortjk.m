function [Tout,ind]=colsortjk(Tin)
% COLSORTJK
% Re-orders cols of tab so that cols of identity matrix appear on RHS
% Use on Canonical Form tableau before optimisming
%                       so that sensitivity analysis can be performed.
%
% Tin is a canonical form simplex tableau.
% Tout is the same tableau with the cols of the identity matrix on RHS.


[m,n]=size(Tin);
Tout=[];

for col=1:n
    if Tin(1,col)~=0 ||( Tin(1,col)==0 && sum(abs(Tin(:,col)))~=1)
        Tout=[Tout Tin(:,col)];
    end
end
Tout=[Tout [zeros(1,m-1);eye(m-1)]];
if nargout>=2
    [ ind] = makeindex( Tin);
    check=norm(Tin(:,ind)-Tout);
    if check >10*eps
        fprintf('Error: index incorrect. Discrepancy: %g.\n', check)
    end
end