
%Repeated operations for 6 images

%panda1 image
panda1 = imread('panda1.jpg');
imshow(panda1);
%prepare image by grayscaling, scaling, and converting to double
grayPanda1 = rgb2gray(panda1);
imshow(grayPanda1);
scaledPanda1 = imresize(grayPanda1, .5);
imshow(scaledPanda1);
F = makeLMfilters;
P1 = double(scaledPanda1);

binranges = 2.^(0:0.5:7);

%Place image into histogram bin and create a descriptor
for i=1:48 
    filtP1 = imfilter(P1, F(:,:,i));
    filtP1 = filtP1(:);
    subplot(1, 2, 1)
    imagesc(filtP1);
    if i==1
        bincounts = histc(filtP1(:),binranges);
        descriptorPanda1 = bincounts;
        bar(binranges, bincounts, 'histc');
    else
        bincounts = histc(filtP1(:), binranges);
        descriptorPanda1 = [descriptorPanda1;  bincounts];
    end
end


%panda2 image
panda2 = imread('panda2.jpg');
imshow(panda2);
%prepare image by grayscaling, scaling, and converting to double
grayPanda2 = rgb2gray(panda2);
imshow(grayPanda2);
scaledPanda2 = imresize(grayPanda2, .5);
imshow(scaledPanda2);
P2 = double(scaledPanda2);

%Place image into histogram bin and create a descriptor
for i=1:48 
    filtP2 = imfilter(P2, F(:,:,i));
    filtP2 = filtP2(:);
    subplot(1,2,1)
    imagesc(F(:,:,i));
    subplot(1, 2, 2);
    imagesc(filtP2);
    if i==1
        bincounts = histc(filtP2(:),binranges);
        descriptorPanda2 = bincounts;
        bar(binranges, bincounts, 'histc');
    else
        bincounts = histc(filtP2(:), binranges);
        descriptorPanda2 = [descriptorPanda2;  bincounts];
    end
end



%cardinal1 image
card1 = imread('cardinal1.jpg');
imshow(card1);
%prepare image by grayscaling, scaling, and converting to double
grayCard1 = rgb2gray(card1);
imshow(grayCard1);
scaledCard1 = imresize(grayCard1, .5);
imshow(scaledCard1);
C1 = double(scaledCard1);

%Place image into histogram bin and create a descriptor
for i=1:48 
    filtC1 = imfilter(C1, F(:,:,i));
    filtC1 = filtC1(:);
    subplot(1,2,1)
    imagesc(F(:,:,i));
    subplot(1, 2, 2);
    imagesc(filtC1);
    if i==1
        bincounts = histc(filtC1(:),binranges);
        descriptorCard1 = bincounts;
        bar(binranges, bincounts, 'histc');
    else
        bincounts = histc(filtC1(:), binranges);
        descriptorCard1 = [descriptorCard1;  bincounts];
    end
end


%cardinal 2 image
card2 = imread('cardinal2.jpg');
imshow(card2);
%prepare image by grayscaling, scaling, and converting to double
grayCard2 = rgb2gray(card2);
imshow(grayCard2);
scaledCard2 = imresize(grayCard2, .5);
imshow(scaledCard2);
C2 = double(scaledCard2);

%Place image into histogram bin and create a descriptor
for i=1:48 
    filtC2 = imfilter(C2, F(:,:,i));
    filtC2 = filtC2(:);
    subplot(1,2,1)
    imagesc(F(:,:,i));
    subplot(1, 2, 2);
    imagesc(filtC2);
    if i==1
        bincounts = histc(filtC2(:),binranges);
        descriptorCard2 = bincounts;
        bar(binranges, bincounts, 'histc');
    else
        bincounts = histc(filtC2(:), binranges);
        descriptorCard2 = [descriptorCard2;  bincounts];
    end
end


%leopard 1 image
leo1 = imread('leopard1.jpg');
imshow(leo1);
%prepare image by grayscaling, scaling, and converting to double
grayLeo1 = rgb2gray(leo1);
imshow(grayLeo1);
scaledLeo1 = imresize(grayLeo1, .5);
imshow(scaledLeo1);
L1 = double(scaledLeo1);

%Place image into histogram bin and create a descriptor
for i=1:48 
    filtL1 = imfilter(L1, F(:,:,i));
    filtL1 = filtL1(:);
    subplot(1,2,1)
    imagesc(F(:,:,i));
    subplot(1, 2, 2);
    imagesc(filtL1);
    if i==1
        bincounts = histc(filtL1(:),binranges);
        descriptorLeo1 = bincounts;
        bar(binranges, bincounts, 'histc');
    else
        bincounts = histc(filtL1(:), binranges);
        descriptorLeo1 = [descriptorLeo1;  bincounts];
    end
end


%leopard 2 image
leo2 = imread('leopard2.jpg');
imshow(leo2);
%prepare image by grayscaling, scaling, and converting to double
grayLeo2 = rgb2gray(leo2);
imshow(grayLeo2);
scaledLeo2 = imresize(grayLeo2, .5);
imshow(scaledLeo2);
L2 = double(scaledLeo2);

%Place image into histogram bin and create a descriptor
for i=1:48 
    filtL2 = imfilter(L2, F(:,:,i));
    filtL2 = filtL2(:);
    subplot(1,2,1)
    imagesc(F(:,:,i));
    subplot(1, 2, 2);
    imagesc(filtL2);
    if i==1
        bincounts = histc(filtL2(:),binranges);
        descriptorLeo2 = bincounts;
        bar(binranges, bincounts, 'histc');
    else
        bincounts = histc(filtL2(:), binranges);
        descriptorLeo2 = [descriptorLeo2;  bincounts];
    end
end
