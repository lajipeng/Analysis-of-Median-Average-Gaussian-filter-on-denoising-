% Author£ºlajipeng
% Date: 2019/10/25
% Fuction: Define the noise density 0.5 and see what will happen in MSE and SNR 
%%
clear all;
close all;
%% use median filter
Image=imread('coins.png');
Img_noise=imnoise(Image,'salt & pepper',0.5); %add salt&pepper noise

subplot(2,2,1),imshow(Img_noise);
title('The noise density is 0.5')
[mse1,snr1] = evaluation(Image,Img_noise);

Image1=medfilt2(Img_noise0,[3,3]);        %medfilter£¨3*3£©
[mse2,snr2] = evaluation(Image,Image1);
subplot(2,2,2),imshow(Image1);
title('medfilter£¨3*3£©')

Image2=medfilt2(Img_noise0,[5,5]);        %medfilter£¨5*5£©
[mse3,snr3] = evaluation(Image,Image2);
subplot(2,2,3),imshow(Image2);
title('medfilter£¨5*5£©')

Image3=medfilt2(Img_noise0,[7,7]);        %medfilter£¨7*7£©
[mse4,snr4] = evaluation(Image,Image3);
subplot(2,2,4),imshow(Image3);
title('medfilter£¨7*7£©')
