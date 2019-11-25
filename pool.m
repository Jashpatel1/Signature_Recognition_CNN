function pooling = pool(A)
[a,b,l]=size(A);

for p=1:l
    for i=1:(a/3)        
        for j=1:(b/3)
            sum=0;
            for x=1:3
                for y=1:3
                    sum=sum+A(x+(3*(i-1)),y+(3*(j-1)),p);
                end
            end
            pooling(i,j,p)=(sum/9);
        end
    end
end

for p=1:l
    for k=1:a/3
        sum=0;
        for i=1:3
            sum=sum+A(i+(3*(k-1)),73,p);
        end
        pooling(k,25,p)=(sum/3);
    end
end

for p=1:l
    for k=1:b/3
        sum=0;
        for i=1:3
            sum=sum+A(19,i+(3*(k-1)),p);
        end
        pooling(7,k,p)=(sum/3);
    end
end

for p=1:l
    pooling(7,25,p)=A(19,73,p);
end

end

            
        
            
        