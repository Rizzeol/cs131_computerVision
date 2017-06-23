function features = ComputePositionColorFeatures(img)
% Compute a feature vector of colors and positions for all pixels in the
% image. For each pixel in the image we compute a feature vector
% (r, g, b, x, y) where (r, g, b) is the color of the pixel and (x, y) is
% its position within the image.
%
% INPUT
% img - Array of image data of size h x w x 3.
%
% OUTPUT
% features - Array of computed features of size h x w x 5 where
%            features(i, j, :) is the feature vector for the pixel
%            img(i, j, :).

    height = size(img, 1);
    width = size(img, 2);
    features = zeros(height, width, 5);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                                                                         %
    %                              YOUR CODE HERE                             %
    %                                                                         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    rgb=ComputeColorFeatures(img);
    features(:,:,1)=rgb(:,:,1);
    features(:,:,2)=rgb(:,:,2);
    features(:,:,3)=rgb(:,:,3);
    features(:,:,4)=repmat((1:width),height,1);
    features(:,:,5)=repmat((1:height)',1,width);
end
