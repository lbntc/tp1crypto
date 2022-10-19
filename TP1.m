clear all, close all, clc;
n=25; k=5; 
Texte=input('message','s');
Choix=input('entrez zero pour chiffrer, un pour dechiffrer');
T=dec2bin(abs(Texte),8);
%chiffrement
for i=1:size(T,1)
    S(i,:)=RF(T(i,:),n,k,0);
end
crypto=char(bin2dec(S))
    %dechiffrement
    G=dec2bin(abs(crypto),8);
    for i=1:size(G,1)
        S(i,:)=RF(G(i,:),n,k,1);
    end
    clair=char(bin2dec(S))
