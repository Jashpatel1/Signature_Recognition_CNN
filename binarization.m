function[BINARY]=binarization(DGRAY)
tot=0;
[a,b]=size(DGRAY);
BINARY=zeros(a,b);
for i=1:a
    for j=1:b
        BINARY(i,j)=0;
    end
end
for i=1:a
    for j=1:b
        tot=tot+DGRAY(i,j);
    end
end
thr=tot/(a*b);
for i=1:a
    for j=1:b
        if DGRAY(i,j) > thr
            BINARY(i,j)=0;
        else
            BINARY(i,j)=1;
        end
    end
end


figure
imshow(imcomplement(BINARY));
end