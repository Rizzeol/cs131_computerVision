function d = DifferanceOfGaussian( x, k, sigma )
d = (gaussian(x,k*sigma) - gaussian(x,sigma))/(k*sigma-sigma);
end

function g = gaussian(x, sigma)
g = (1/(sqrt(2*pi)*sigma))*exp(1).^(-x.^2/(2*sigma^2));
end
