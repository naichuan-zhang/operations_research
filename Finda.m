b=TS(2:end,1);
s=TS(2:end,lnbslackcol);
pos=find(s>0);
neg=find(s<0);
posratsB=-b(pos)./s(pos);
negratsB=-b(neg)./s(neg);
minposval=max(posratsB);
maxnegval=min(negratsB);
