A = ones(16,16);
A = A*255;
B = zeros(16,16);
C = [A B;B A];
D = [C C C C; C C C C];
%colormap(gray);
%image(D)
image_moon = imread('moon.bmp');
image_rice = imread('rice.png');

subplot(2,2,3);
imshow(image_moon);

subplot(2,2,4);
image_rice_2 = flip(image_moon,2);
imshow(image_rice_2);

subplot(2,2,1);
image_rice_3 = flip(image_moon,1);
imshow(image_rice_3);
%imwrite(D,'chess_like_image.tif','tif')