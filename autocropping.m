gray= imread("signature1.png");
gray=imbinarize(gray);
imshow(gray);
[x,y]= size(gray);
starting_point_min_y=[];
for a=1:x
    for b=1:y
        if gray(a,b)==1
            starting_point_min_y(a)=b;
            break;
        else
            starting_point_min_y(a)=5000000;
        end
    end
end

starting_point_min_x=[];
for a=1:y
    for b=1:x
        if gray(b,a)==1
            starting_point_min_x(a)=b;
            break;
        else
            starting_point_min_x(a)=5000000;
            
        end
    end
end

ending_point_max_y=[];
for a=x:-1:1
    for b=y:-1:1
        if gray(a,b)==1
            ending_point_max_y(a)=b;
            break;
        else
            ending_point_max_y(a)=0;
        end
    end
end

ending_point_max_x=[];
for a=y:-1:1
    for b=x:-1:1
        if gray(b,a)==1
            ending_point_max_x(a)=b;
            break;
        else
            ending_point_max_x(a)=0;
        end
    end
end

x1=min(starting_point_min_x);
y1=min(starting_point_min_y);
x2=max(ending_point_max_x);
y2=max(ending_point_max_y);

I=imcrop(gray,[x1,y1,x2-x1,y2-y1]);
figure
imshow(I);