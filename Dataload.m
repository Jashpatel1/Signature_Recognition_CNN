
myFolder= 'c:\Users\heman\Desktop\sns\Signature_Recognition_CNN\Dataset\dataset1\real';
%myImages = imageSet(folder);
filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  %fprintf(1, 'Now reading %s\n', fullFileName);
  % Now do whatever you want with this file name,
  % such as reading it in as an image array with imread()
  imageArray = imread(fullFileName);
  imshow(imageArray);  % Display image.
  drawnow; % Force display to update immediately.
end