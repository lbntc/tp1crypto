function [ y ] = f( x,i,k )
r=bin2dec(x);

y=mod((2*i*k)^r,15);

end

