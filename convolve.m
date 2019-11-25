function [poolreturn] = convolve(A, k)
[r, c] = size(A);
[m, n, o] = size(k);

for l=1:27
    for i=1:r-m+1
        for j=1:c-n+1
            sum=0;
            for x=1:m
                for y=1:n
                    sum=sum+(A(x+i-1,y+j-1)*k(x,y,l));
                end
            end
            convolute(i,j,l)=(sum/(m*n));
        end
    end
end

poolreturn=pool(convolute);
end

