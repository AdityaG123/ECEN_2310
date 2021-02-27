function rv = bandstop(F, band)
    [x, y] = size(band);
    if(x~=1 && y~=2)
        error('Band is malformed. (1)') % if it is not a 1x2 array
    end
    
    if isinteger(band)
        error('Band is malformed. (2)') % checks the integer array
    end
    
    for i = band
        if i<0 || floor(i) ~= i
            error('Band is malformed. (3)') % checks the integer array
        end
        
    end
    
    if band(1) > band(2)
        error('Band is malformed. (4)') % checks to see if the lower band is greater than the upper band
    end
    
    rate = size(F, 1);
    
    for i = band
        if i > rate/2
            error('Band is malformed. (5)') % checks to see if not below the Nyquist frequency
        end 
    end
    
    rv = [F(band(1):band(2),:);
        zeros(rate - 2*(band(2) - band(1)) + 1, size(F, 2));
        F(rate - (band(2) - band(1)) + 2:rate,:)];
end