I = imread('Rose1024.tif');
figure
%subplot(2,3,1)
colormap gray
imagesc(I)
title('Original Image')

% 
% I512 = I(1:2:end,1:2:end);
% subplot(2,3,2)
% colormap gray
% imagesc(I512)
% title('512x512 image')
% 
% Inew = I(1:8:end,1:8:end);
% subplot(2,3,3)
% colormap gray
% imagesc(Inew)
% title('128x128 image')

for i = 1:5
    figure
        temp = 2^i;
        Itemp = I(1:temp:end,1:temp:end);
        %subplot(2,3,i+1) otomatik imagesc yapmis gibi gosterir
        colormap gray
        %imshow(Itemp)% plot ekranini gercek degeriyle gosteriyor
        imagesc(Itemp) % resmi cizim ekranina boyutu ne olursa olsun scale eder
        title(1024/temp)
end
