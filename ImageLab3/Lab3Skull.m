skull = imread('Ctskull-256.tif');
colormap gray
imagesc(skull)

% 4. soru; once 255'e bol 1-0 arasina map etmis olur, sonra 1 ile 10 arasina map et
% D = C.^.3 . operatoru tek tek tum elemanlari alir. 3 ile ussunu alit
% 3 ekstra 5 degerini ekleyerek resim al. Toplem 3 tane resim olmali.

% 5. soru, fonksiyon olustur.
% function output = stretch(I,T1,T2) bu grafik cikarcak
% r1 = t1, s1 = 0; r2 T2, s2 = 255 seklinde implemente et
% strect(I,r1,s1,r2,s2) bu 2. fonksiyon. Sonuc resmi donecek
% t1,t2 degeri kendimi vericek. t1 70 t2 180 deger ver. Ya da
% histogram bak
% sum(sum(I<70)) 0 cikcak
% sum(sum(I<71)) 594 cikcak
% sum(sum(I<72) 878 70-71
% amac 70 olan degerlerin 0'a esitlenmesi. m = 255/180-70 x 71 ?. bunu loop
% ile dondurup
% T1 e kadar degerleri pass gec. Arasini al. T2 scale et.
