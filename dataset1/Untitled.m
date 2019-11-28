RGB = imread('02101004.png');
new=imresize(RGB,[27,81]);
imshow(new);

for a=1:27
    for b=1:81
        img(a,b)=mod(a+b,2);
    end
end

k=1;
for i=0:2
    for j=0:8
        for x=1:9
            for y=1:9
                arr(x,y,k)=new(3*i+x,3*j+y);
            end
        end
        k=k+1;
    end
end
