function D = ChiSquareDist( I1, I2, nbins )
%HistIntersectDist
%   Compute the chi square measure for the two given image
%   patches.
%
%Input:
%   I1: image patch 1
%   I2: image patch 2
%   nbins: number of bins for histograms
%
%Output:
%   D: Chi square measure (a real number)
%
    if nargin == 2,
        nbins = 20;
    end


	D = 0;
    % YOUR CODE STARTS HERE
    h1=Histogram(I1, nbins);
    h2=Histogram(I2, nbins);
    D=nansum(power(h1-h2,2)./(h1+h2));

    % YOUR CODE ENDS HERE
end
