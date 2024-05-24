% Read the image
image = imread("C:\Users\nihas\Desktop\Research Work - Image Processing\Media_content_of_HCI_files\Sessions\1\extracted_frames_1\frame_0024.jpg");

% Convert the image to grayscale if it's not already
if size(image, 3) == 3
    grayImage = rgb2gray(image);
else
    grayImage = image;
end

% Define parameters for LBP
radius = 1;
neighbors = 4;

% Compute LBP features
lbpImage = extractLBPFeatures(grayImage, 'Radius', radius, 'NumNeighbors', neighbors);

% Define parameters for LDP
numPoints = 8;
numRings = 3;

% Compute LDP features
ldpImage = ldp(grayImage, numPoints, numRings);

% Display the original image, LBP image, and LDP image
subplot(1, 3, 1);
imshow(image);
title('Original Image');

subplot(1, 3, 2);
imshow(lbpImage, []);
title('LBP Image');

subplot(1, 3, 3);
imshow(ldpImage, []);
title('LDP Image');
