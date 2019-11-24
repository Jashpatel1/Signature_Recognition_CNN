function[PART,B]=divide(CROPPED)
resized=resize(CROPPED,[27,81]);
figure
imshow(resized);

k=1;
for i=0:2
    for j=0:8
        for x=1:9
            for y=1:9
                PART(x,y,k)=resized(3*i+x,3*j+y);
            end
        end
        %figure
        %imshow(PART(:,:,k));
        k=k+1;
        
    end
end

end
