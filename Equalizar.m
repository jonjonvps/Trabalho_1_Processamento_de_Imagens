clear all;
close all;
clc;

% lendo as imagens
image1 = imread('car.png');
image2 = imread('crowd.png');
image3 = imread('university.png');

% display da imagem 1 original e equalizada
Ihistograma1 = histeq(image1);
subplot(1,2,1);
imshow(image1);
title('Imagem Original car');

subplot(1,2,2);
imshow(Ihistograma1);
title('Imagem equalizada car');

% display da imagem 2 original e equalizada
figure;
Ihistograma2 = histeq(image2);
subplot(1,2,1);
imshow(image2);
title('Imagem Original crowd');

subplot(1,2,2);
imshow(Ihistograma2);
title('Imagem equalizada crowd');

% display da imagem 3 original e equalizada
figure;
Ihistograma3 = histeq(image3);
subplot(1,2,1);
imshow(image3);
title('Imagem Original university');

subplot(1,2,2);
imshow(Ihistograma3);
title('Imagem equalizada university');

% histograma da imagem 1 original
figure;
subplot(1,2,1);
imhist(image1);
title('Histograma da imagem car original');
% histograma da imagem 1 equalizada
subplot(1,2,2);
imhist(Ihistograma1);
title('Histograma da imagem equalizada car');


figure;
%normalizando o histograma da imagem 1 original
HistoNormalizado = imhist(image1)/numel(image1);
% calculando o CDF da imagem 1 original
CDF = cumsum(HistoNormalizado);
subplot(1,2,1);
plot(CDF)
xlabel("rk")
ylabel("CDF")
xlim([0, 255]);
title("CDF da imagem original car");

%normalizando o histograma da imagem 1 equalizada
HistoNormalizado2 = imhist(Ihistograma1)/numel(Ihistograma1);
% calculando o CDF da imagem 1 equalizada
CDF2 = cumsum(HistoNormalizado2);
subplot(1,2,2);
plot(CDF2)
xlabel("rk")
ylabel("CDF")
xlim([0, 255]);
title("CDF da imagem equalizada car"); 


