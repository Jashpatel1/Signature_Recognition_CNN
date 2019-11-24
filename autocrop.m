function[CROPPED]=autocrop(BINARY)

[a,b]=size(BINARY);
for i=1:a
    for j=1:b
        if BINARY(i,j)==1
                x1(i)=j;
                break;
        else
            x1(i)=5000000;
        end
    end
end

for i=1:b
    for j=1:a
        if BINARY(j,i)==1
                y1(i)=j;
                break;
        else
            y1(i)=5000000;
        end
    end
end

for i=a:-1:1
    for j=b:-1:1
        if BINARY(i,j)==1
                x2(i)=j;
                break;
        else
            x2(i)=0;
        end
    end
end

for i=b:-1:1
    for j=a:-1:1
        if BINARY(j,i)==1
                y2(i)=j;
                break;
        else
            y2(i)=0;
        end
    end
end

x11=min(x1);
y11=min(y1);
x22=max(x2);
y22=max(y2);
CROPPED=imcomplement(imcrop(BINARY,[x11,y11,x22-x11,y22-y11]));
new_height=y22-y11;
new_width=x22-x11;
figure
imshow(CROPPED);
end
