function [MSE,SNR] = evaluation(img1,img2)
img = img1 - img2;
L = size(img);
MSE = sum(sum(img.^2))/(L(1)^2)
N = sum(sum(img.^2));
P = sum(sum(img1.^2));
SNR = 20*log10(P/N);
end

