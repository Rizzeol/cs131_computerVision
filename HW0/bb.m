flower = double(rgb2gray(imread('flower.bmp')));
[u,s,v] = svd(flower);
diagonal = diag(s);
ten = diagonal(1:10);
x = 1:10;
graph = plot(x,ten);

k = 20;
a = u(:, 1:k);
b = s(1:k, 1:k);
vt = transpose(v);
c = vt(1:k, :);
res = a*b*c;
figure;
imshow(uint8(res));

error = flower - res;
x = k:300;


figure;
imshow(uint8(res));

%figure;
%imshow(uint8(error));