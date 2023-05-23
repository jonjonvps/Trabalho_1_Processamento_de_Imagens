clear all
close all
clc

function newImage = SUPERRES(image1, image2)
    % Obter o tamanho original da imagem
    [rows, cols, ~] = size(image1);

    % Redimensionar a imagem
    newRows = rows * 2;
    newCols = cols * 2;
    preImage = -1 * ones(newRows, newCols, 3, class(image1));
    
    % Preencher a imagem final com os pixels das imagens originais
    newImage(1:2:newRows, 1:2:newCols, :) = image1;
    newImage(2:2:newRows, 2:2:newCols, :) = image2;
    
    % Preencher as posições vazias com a média dos pixels vizinhos    
    for i = 1:newRows
        for j = 1:newCols
            if newImage(i, j, :) == 0
                % Calcular a média dos pixels vizinhos
                neighbors = [];
                if i > 1
                    neighbors = [neighbors; newImage(i-1, j, :)];
                end
                if i < newRows
                    neighbors = [neighbors; newImage(i+1, j, :)];
                end
                if j > 1
                    neighbors = [neighbors; newImage(i, j-1, :)];
                end
                if j < newCols
                    neighbors = [neighbors; newImage(i, j+1, :)];
                end
                
                % Preencher a posição vazia com a média dos pixels vizinhos
                newImage(i, j, :) = mean(neighbors);
            end
        end
    end

end

I1 = imread('fruit1.jpg');
figure
imshow(I1); 
I2 = imread('fruit2.jpg');
figure
imshow(I2); 
I3 = SUPERRES(I1,I2);
figure
imshow(I3); 
