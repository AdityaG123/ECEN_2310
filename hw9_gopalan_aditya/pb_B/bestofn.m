function fh = bestofn(n)
    
    if(isscalar(n) && isreal(n) && rem(n,2) == 1) %checks to see if the n is a scalar and odd
        coeff = zeros(1,n+1); 
        for k = 0:((n-1)/2)
            temp = (n+1)/2 + k;
            nk = nchoosek(n,temp);
            sum = 0;
            for j = 0:k
                sum = sum + ((-1)^j*nchoosek(temp,j));
            end
            coeff(n - temp + 1) = nk*sum;
        end
        
        fh = @(p) polyval(coeff,p);
    else
        error('Something went wrong, the input is not an odd integer. Please try again.');
    end
    
end