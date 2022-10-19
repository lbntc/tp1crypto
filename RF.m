function [ y ] = RF( x,n,k,choix)
%k cl?, x message clair , C cryptogramme

if(choix==0)
%chiffrement
G(1,:)=x(1:4);
D(1,:)=x(5:8);

for i=1:n
    
G(i+1,:)=D(i,:);
z=bin2dec(G(i,:));
z1=bitxor(z,f(D(i,:),i,k));
D(i+1,:)=dec2bin((z1),4);
end
y=[G(n+1,:),D(n+1,:)];

else
    %dechiffrement
    G(n+1,:)=x(1:4);
    D(n+1,:)=x(5:8);
    
    for i=n:-1:1
        D(i,:)=G(i+1,:);
        z3=bin2dec(D(i+1,:));
        z5=f(G(i+1,:),i,k);
        z4=bitxor(z3,z5);
        G(i,:)=dec2bin(z4,4);
    end
    
    y=[G(1,:),D(1,:)];

end
end

