RGB = imread('00400004.png');
figure
imshow(RGB);
DGRAY=grayscale(RGB);
l=binarization(DGRAY);
I=autocrop(l);

[new_height,new_width]=size(I);
feature1 = new_width/new_height;
feature2=0;
for i=1:new_height
    for j=1:new_width
        if I(i,j)==0
            feature2=feature2+1;
        end
    end
end
feature2=feature2/(new_height*new_width);

projection_mean=mean(mean(I,2));

vertical_std=std(mean(I,2));
horizontal_std=std(mean(I,1));





        