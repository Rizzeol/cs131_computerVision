% This function calls the functions below and displays their results.
% You don't need to edit it.
function edgedetector()
    img = double(rgb2gray(imread('buoys.jpg')));

    edges = DetectVerticalEdges(img);
    blurred_edges = BoxBlur(edges);
    
    figure('Name','Original Image')
    imshow(img, []);
    
    figure('Name','Edges')
    imshow(edges, []);
    imwrite(edges,'Edges.png');
    
    
    figure('Name','Blurred Edges')
    imshow(blurred_edges, []);
    imwrite(uint8(blurred_edges),'BlurredEdges.png');
    
end


% Returns a matrix containing the horizontal component of the gradient at every
% image location.
function edges = DetectVerticalEdges(img)
    % MATLAB images use matrix indices, so the order is (y,x), and the +y
    % direction is downward.
    %width = size(img, 2);
    %height = size(img, 1);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%% Your part (a) code here. You can accomplish part (a) with
    %%%%%%%%%% nested "for" loops, but an easier way is to use matrix 
    %%%%%%%%%% indexing to make a matrix of the "left" pixels and a matrix 
    %%%%%%%%%% of the "right" pixels, and subtract the two matrices.
    %%%%%%%%%% REMEMBER: left/right position is the SECOND index in MATLAB.
    left=circshift(img,[0,1]);
    edges =uint8(img-left); %zeros(height, width-1);

    %%%%%%%%%% End of your part (a) code.
end

% Applies a box blur to the input image and returns the result.
function blurred = BoxBlur(img)
    img = double(img);

    height = size(img, 1);
    width = size(img, 2);
    n=5; % width of the blur
    blurred = zeros(height-(n-1),width-(n-1));
    % Loop through each pixel location in the result
    for y=1:height-(n-1)
        for x=1:width-(n-1)
            bla=img(y:y+n-1,x:x+n-1);
            blurred(y,x) = sum(sum(bla));
        end
    end
    
    % Usually we'll divide at the end so that we don't make the image
    % brighter:
    blurred = blurred / n^2;    
end
