function g=gaussianSecDer(x,sigma)
g= -(1/(sqrt(2*pi)*sigma)).*(1-x.^2./sigma^2).*exp(-x.^2./(2*sigma^2));
end