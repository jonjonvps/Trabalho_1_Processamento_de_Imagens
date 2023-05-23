clear all
close all
clc

function newImage = TAM2(I, quant)
  % obtendo as dimenções da imagem
  [rows, cols, ~] = size(I);
  
  % redimensionando a imagem
  newRows = rows * 2;
  newCols = cols * 2;
  
  newImage = -1 * ones(newRows, newCols, 3, class(I));
  % copiando os pixel para as linhas e colunas
  for i = 1:newRows
    rowIdx = ceil(i/2);
    for j = 1:newCols
      colIdx = ceil(j/2);
      newImage(i, j, :) = I(rowIdx, colIdx, :) ;
    endfor
  endfor
  % Chamada recursiva para aumentar novamente 2 vezes
  if quant > 2
    newImage = TAM2(newImage,quant/2);
  endif
  
end

I1 = imread('fruit1.jpg');
figure
imshow(I1); 
I2 = TAM2(I1,8);
figure
imshow(I2); 