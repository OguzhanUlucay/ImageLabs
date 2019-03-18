function output = Lab4(input, T1, T2)
%T1 and T2 are parameters for linear strecth
%sum(sum(ans==5))
%equalize image girecek ve cikacak, imhist kullanabilirsiniz
%[COUNTS,X] = imhist(I) ile degerler alinabilinir. x bir eksik index(gercek
%degeri) gosterir
%output =uint(
% pr = COUNTS / 88572(m*n) ile olasiliklari bul.
%kumulatiflerini for ile hesapla
%cumpr= zeros(1,256);
%cumpr(1) = pr(1) 1.yi almiyor?
%for i = 2:256
%    cumpr(i) = cumpr(i-1) + pr(i);
%end
%newval = uint8(cumpr*255)
%input image;de cikan sonuclari imput ==116 => 172 olacak sonuc resimde.
%function output = myeq(input)\
%output olusturma;
%for k =:255 kadar butun sayilari asagida ki gibi degistcez. i+1. degerlere
%bakilcak
%B = zeros(5);
%B(A==7) = 107, A'nin 8 olan yerlerini 107 yapar
%2.soruda bultin [J,T] = histeq(I) fonksiyonunu kullan. Bu kisim icin ses kaydi
%dinle, 53dk. J => resim, T=>transform fonksiyonu
%ref image'inde hist'ni al. cikan 2 fonksiyon sonuclarini(1x256) match et.
%Aynisi olmayan degerleri yakin degerine map et.
%Ref istedigini al. ASonuclari histeq(i,hgram) hgram = target histogram ile
%kontrol edebilirsin. imhistmatch => berkay reis
[m,n] = size(input);

output = zeros(m,n);
temp = T2-T1;
for i = 1:m
   for  j = 1:n
       if input(i,j) < T1
           output(i,j) = 0;
       elseif input(i,j) < T2
           output(i,j) = round((input(i,j) - T1) * (255/temp));
       else
           output(i,j) = 255;
       end
   end
end
subplot(2,1,1)
imshow(input)

subplot(2,1,2)
imshow(uint8(output))