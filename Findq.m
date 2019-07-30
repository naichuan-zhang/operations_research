%c=TS(1,2:end);
%s=TS(rowC,2:end);
%posC=find(s>0);
%negC=find(s<0);

% Delete one element from posC manually

posratsC=-c(posC)./s(posC);
negratsC=-c(negC)./s(negC);
minnegval=max(posratsC);
maxposval=min(negratsC);