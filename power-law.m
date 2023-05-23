clear all;
close all;
clc;
% lendo as imagens
image1 = imread('car.png');
image2 = imread('crowd.png');
image3 = imread('university.png');

% fator gama inicial
gama = 0.5

% adicionando os fatores gamas
for i = 1:3
  ImageGama1 = imadjust(image1,[],[],gama);
  subplot(1,3,i);
  imshow(ImageGama1);
  title(gama)
  gama = gama + 0.5;
end
figure;
gama = 0.7
for i = 1:3
  ImageGama2 = imadjust(image2,[],[],gama);
  subplot(1,3,i);
  imshow(ImageGama2);
  title(gama)
  gama = gama + 0.3;
end
figure;
gama = 0.7
for i = 1:3
  ImageGama3 = imadjust(image3,[],[],gama);
  subplot(1,3,i);
  imshow(ImageGama3);
  title(gama)
  gama = gama + 0.3;
end

% selecionando os melhores resultados 
figure;
ImageGama1 = imadjust(image1,[],[],1.5);
subplot(1,3,1);
imshow(ImageGama1);
title('car gama 1.5');

ImageGama2 = imadjust(image2,[],[],0.7);
subplot(1,3,2);
imshow(ImageGama2);
title('crowd gama 0.7');

ImageGama3 = imadjust(image3,[],[],0.7);
subplot(1,3,3);
imshow(ImageGama3);
title('university gama 0.7');
