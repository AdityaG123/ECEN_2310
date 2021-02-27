function rv = fchord(spec)

if nargin < 1 || isempty(spec)
    spec = [294 440 587 740];
elseif any(rem(spec, 1) ~= 0)
    error('The frequency has to be an int value, please try again')
elseif any(spec < 0 | spec > 4095)
    error('The frequency needs to be between 0 and 4095 Hz.')
end

ssas = zeros(1, 4096);
ssas(spec + 1) = 1/length(spec);
F = [ssas(1), ssas(2:4096)/2, 0, ssas(4096:-1:2)/2] * 8192;
rv = real(ifft(F));

end