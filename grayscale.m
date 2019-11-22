function[DGRAY]=grayscale(RGB)

[x,y,z]=size(RGB);
if z==3
    for i= 1:x
        for j= 1:y
            GRAY(i,j)=0.3*RGB(i,j,1)+0.59*RGB(i,j,2)+0.11*RGB(i,j,3);
        end
    end
else
    GRAY=RGB;
end  
GRAY=uint8(GRAY);
figure
imshow(GRAY);
DGRAY=double(GRAY);
DRGB=double(RGB);
end