function convolute = convolve(A, k)
[r, c] = size(A);
[m, n, o] = size(k);

for a=1:r
    for b=1:c
        AS(a,b)=0;
    end
end

for l=1:27
    for i=1:r-8
        for j=1:c-8
            for x=1:m
                for y=1:n
                    AS(i,j)=AS(i,j)+(A(x+i-1,y+j-1)*k(x,y,l));
                end
            end
            convolute(i,j,l)=(AS(i,j)/(m*n));
        end
    end
end
