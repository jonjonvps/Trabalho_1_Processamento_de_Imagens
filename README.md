# Trbalho_1_Processamento_de_Imagens
Trabalho consiste em aplicar realces e filtro para aumentar a qualidade e a resolução da imagem.

## Questão 1
### 1.1 
Faça uma FUNÇÃO em matlab chamada TAM2 que recebe 2 argumentos. O primeiro argumento é uma
imagem colorida em RGB, o segundo argumento é um número par maior que 2 (ex.: I = TAM2(I1,8)).
A função deve retornar uma imagem com o número de linhas e colunas aumentadas na quantidade de vezes
indicada pelo segundo parâmetro ( no exemplo vezes 8). Para isso seu programa deve repeterir a linha e
coluna anterior, como o exemplo abaixo.

A imagem original:

| 10 | 12 |
|:---:|:---:|
| **5** | **7** |

Aumentada em 2 deve ser:

| 10 | 10 | 12 | 12 |
|:---:|:---:|:---:|:---:|
| **10** | **10** | **12** | **12** |
| **5** | **5** | **7** | **7** |
| **5** | **5** | **7** | **7** |

Dica faça uma função que aumente em 2 e chame ele varias vezes dentro da função TAM2. Mostre no
relatório resultados com tamanho aumentado em 2 e em 8. Comente seus resultados com a imagems
FRUIT1.jpg

### 1.2 
Faça uma função TAMM que aumente a imagem em lugar de repetir faça a media entre quando possível
os valores e que funcione somente para aumentar a imagem em 2. Primeiro deve preencher os pixels novas
nas filas que NÃO estão totalmente “vazias”. E depois preencher os pixels restantes. No exemplo abaixo em
vermelho são os pixels que são preenchidos primeiro. E depois são preenchidos os pixels em azul.

|10| $${\color{red}11}$$| 12| $${\color{red}12}$$|
|:---:|:---:|:---:|:---:|
| $${\color{blue}8}$$ | $${\color{blue}9}$$ |$${\color{blue}10}$$| $${\color{blue}10}$$|
|**5**|$${\color{red}11}$$|**7**|$${\color{red}7}$$|
|$${\color{blue}5}$$|$${\color{blue}6}$$|$${\color{blue}7}$$|$${\color{blue}7}$$|

Mostre no relatório o resultado para tamanho aumentado em 2 e compare com o anterior. Comente seus
resultados com a imagem FRUIT1.jpg

### 1.3 
Faça uma função SUPERRES que receba 2 imagens. E combine elas para gerar uma imagem nova do
dobro do tamanho. Sendo que deve supor que a primeira imagem possui os pixels nas posições com linhas e
colunas IMPARES na imagem final (assumindo que começa o indicar as posições pelo ‘1’ como no matlab).
E a segunda imagem as posições pares.
Exemplo:

A posição (1,1) da primeira imagem seria a posição (1,1) da imagem final.

A posição (1,2) da primeira imagem seria a posição (1,3) da imagem final.

A posição (2,2) da primeira imagem seria a posição (3,3) da imagem final.

A posição (1,1) da segunda imagem seria a posição (2,2) da imagem final.

A posição (1,2) da segunda imagem seria a posição (2,4) da imagem final.

A posição (2,2) da segunda imagem seria a posição (4,4) da imagem final.

Use as imagens FRUIT1 e FRUIT2 e compare seus resultados com os anteriores no relatiorio

## Questão 2
Dada as imagens: "car.png", "crowd.png" e "university.png". Faça um programa que realize o realce destas
três imagens mediante as técnicas power-law e equalização de histograma.
### 2.1 
Testar o realce power-law (correção gamma) com pelos menos 2 valores diferentes, ambos maiores e
menores que 1, para cada imagem . Mostrar o melhor resultado para cada imagem.
### 2.2 
Equalizar as três imagens, mostrar o resultado das três imagens. E de uma delas mostrar o histograma e
CDF (função de distribuição acumulada) antes e depois da equalização.
### 2.3 
Comentar seus resultados, indicando qual método foi o melhor.

## DICA: 
Utilize as funções 'imadjust' e 'histeq' no MATLAB. Ou 'equalizeHist', 'cvPow' e
'cvConvertScaleAbs' em openCV. No relatório mostre os resultados para pelo menos uma das imagens, e
comente os resultados
obtidos de todas as imagens.
