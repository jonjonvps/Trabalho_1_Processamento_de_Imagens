clear all
close all
clc

function newImage = TAMM(I)
    % Obter o tamanho original da imagem
    [rows, cols, ~] = size(I);

    % Redimensionar a imagem
    newRows = rows * 2;
    newCols = cols * 2;
    newImage = zeros(newRows, newCols, 3, class(I));

    % Preencher pixels novos nas filas não totalmente "vazias"
    for i = 1:rows
        for j = 1:cols
            newImage(i*2-1, j*2-1, :) = I(i, j, :);
            if j < cols
                newImage(i*2-1, j*2, :) = (double(I(i, j, :)) + double(I(i, j+1, :))) / 2;
            else
                % quando não tem como fazer a média
                newImage(i*2-1, j*2, :) = I(i, j, :);
            end
        end
    end

    % Preencher pixels nas linhas totalmente "vazias"
    for i = 2:2:newRows
        for j = 1:newCols
            if i < newRows
                newImage(i, j, :) = (double(newImage(i-1, j, :)) + double(newImage(i+1, j, :))) / 2;
            else
                % quando não tem como fazer a média
                newImage(i, j, :) = newImage(i-1, j, :);
            end
        end
    end
end

I1 = imread('fruit1.jpg');
display(I1(1:5,1:5,:));
figure
imshow(I1); 
I2 = TAMM(I1);
display(I2(1:5,1:5,:));
figure
imshow(I2); 