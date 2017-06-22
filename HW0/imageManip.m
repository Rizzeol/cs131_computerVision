%reads in the image, converts it to grayscale, and converts the intensities
%from uint8 integers to doubles. (Brightness must be in 'double' format for
%computations, or else MATLAB will do integer math, which we don't want.)
dark = double(rgb2gray(imread('u2dark.png')));

%%%%%% Your part (a) code here: calculate statistics
avg=mean2(dark);
min=min(min(dark));
max=max(max(dark));

%%%%%% Your part (b) code here: apply offset and scaling
fixedimg = (dark-min)*256/(max-min+1);

%displays the image
imshow(uint8(fixedimg));

%%%%%% Your part (c) code here: apply the formula to increase contrast,
% and display the image
contrasted = 2*(fixedimg-128) + 128;
contrasted = uint8(contrasted);
imshow(contrasted);
imwrite(contrasted,'contrasted.png');
%idx=find(fixedimg>63&fixedimg<192);
%contrasted = fixedimg;
%contrasted(idx)=2*(fixedimg(idx)-128)+128;
