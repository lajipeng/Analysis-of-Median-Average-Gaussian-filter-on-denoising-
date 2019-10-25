% Author£ºlajipeng
% Date: 2019/10/25
% Fuction: Please use coins.png in Matlab, and respectively add salt&pepper noise and 
% gaussian noise into it. You are asked to de-noise the noise image by using mean filter, 
% median filter and gaussian filter and evaluate the image quality after de-noising 
%%
clear all;
close all;
%% use median filter
Image=imread('coins.png');
Img_noise0=imnoise(Image,'salt & pepper',0.02); %add salt&pepper noise
Img_noise=imnoise(Img_noise0,'gaussian',0,0.02); %add gaussian noise

subplot(2,2,1),imshow(Img_noise);
title('coin.png after adding salt&pepper and gaussian noise')
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
%% use mean filter
Image=imread('coins.png');
Img_noise0=imnoise(Image,'salt & pepper',0.02); %add salt&pepper noise
Img_noise=imnoise(Img_noise0,'gaussian',0,0.02); %add gaussian noise

subplot(2,2,1),imshow(Img_noise);
title('coin.png after adding salt&pepper and gaussian noise')
[mse1,snr1] = evaluation(Image,Img_noise);

h=fspecial('average',3);
Image1=imfilter(Img_noise,h,'symmetric');        %average filter£¨3*3£©
subplot(2,2,2),imshow(Image1);
title('average filter£¨3*3£©')
[mse2,snr2] = evaluation(Image,Image1);

h=fspecial('average',5);
Image2=imfilter(Img_noise,h,'symmetric');        %average filter£¨5*5£©
subplot(2,2,3),imshow(Image2);
title('average filter£¨3*3£©')
[mse3,snr3] = evaluation(Image,Image2);

h=fspecial('average',7);
Image3=imfilter(Img_noise,h,'symmetric');        %average filter£¨7*7£©
subplot(2,2,4),imshow(Image3);
title('average filter£¨3*3£©')
[mse4,snr4] = evaluation(Image,Image3);
%% gaussian filter
Image=imread('coins.png');
Img_noise0=imnoise(Image,'salt & pepper',0.02);   %add salt&pepper noise 
Img_noise=imnoise(Img_noise0,'gaussian',0,0.02);     %add gaussian noise

subplot(2,3,1),imshow(Img_noise);
title('noising image')
[mse1,snr1] = evaluation(Image,Img_noise);

h=fspecial('gaussian',3,2);
Image1=imfilter(Img_noise,h,'symmetric');        %gaussian filter£¨3*3£©
subplot(2,3,2),imshow(Image1);
title('gaussian,3,2')
[mse2,snr2] = evaluation(Image,Image1);

h=fspecial('gaussian',5,2);
Image2=imfilter(Img_noise,h,'symmetric');        %gaussian filter£¨5*5£©
subplot(2,3,3),imshow(Image2);
title('gaussian,5,2')
[mse3,snr3] = evaluation(Image,Image2);

h=fspecial('gaussian',7,2);
Image3=imfilter(Img_noise,h,'symmetric');        %gaussian filter£¨7*7£©
subplot(2,3,4),imshow(Image3);
title('gaussian,7,2')
[mse4,snr4] = evaluation(Image,Image3);

h=fspecial('gaussian',7,0.2);
Image4=imfilter(Img_noise,h,'symmetric');        %gaussian filter£¨7*7£©
subplot(2,3,5),imshow(Image4);
title('gaussian,7,0.2')
[mse5,snr5] = evaluation(Image,Image4);

h=fspecial('gaussian',7,0.02);
Image5=imfilter(Img_noise,h,'symmetric');        %gaussian filter£¨7*7£©
subplot(2,3,6),imshow(Image5);
title('gaussian,7,0.02')
[mse6,snr6] = evaluation(Image,Image5);

