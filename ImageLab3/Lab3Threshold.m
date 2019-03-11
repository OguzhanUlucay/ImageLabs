I = imread('moon.tif');
colormap gray
imhist(I)

colormap gray
imagesc(I)

xlenth = length(I);

array =  I > 25;
imagesc(array)


