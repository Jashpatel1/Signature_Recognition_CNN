function convolute = convolve(A, k)
[r, c] = size(A);
[m, n, o] = size(k);

for a=1:r-m+1
    for b=1:c-n+1
        AS(a,b)=0;
    end
end

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
