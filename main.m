RGB = imread('00404004.png');
figure
imshow(RGB);
DGRAY=grayscale(RGB);
BINARY=binarization(DGRAY);
CROPPED=autocrop(BINARY);
[PART,convolute]=divide(CROPPED);


[new_height,new_width]=size(CROPPED);
feature1_wtoh_ratio = new_width/new_height;
feature2_high_pressure_area=0;
for i=1:new_height
    for j=1:new_width
        if CROPPED(i,j)==0
            feature2_high_pressure_area=feature2_high_pressure_area+1;
        end
    end
end
feature2_high_pressure_area=feature2_high_pressure_area/(new_height*new_width);

feature3_projection_mean=mean(mean(CROPPED,2));

feature4_vertical_std=std(mean(CROPPED,2));
feature5_horizontal_std=std(mean(CROPPED,1));



binaryImage = true(size(DGRAY));
measurements = regionprops(binaryImage, DGRAY, 'WeightedCentroid');
feature6_cog = measurements(1).WeightedCentroid;

JK=edge(CROPPED);
feature9_high_pressure_area=0;
for i=1:new_height
    for j=1:new_width
        if JK(i,j)==1
            feature9_high_pressure_area=feature9_high_pressure_area+1;
        end
    end
end
feature9_high_pressure_area=feature9_high_pressure_area/(new_height*new_width);
        
