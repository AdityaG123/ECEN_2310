function rv = hchord( spec, dur, fund )
  % produce a sampled signal for a chord of duration
  % 'dur' from a specification 'spec', which is a list
  % of notes

  % obtain number of notes in chord
  [N, width] = size(spec);
  harm = size(fund);
  multiple = harm(2);
  if width ~= 2
    error('malformed input')
  end
  % sample times
  t = (0:8192*dur-1)/8192;
  % initialize signal and accumulate notes into it
  rv = zeros(1, length(t));
  for n = 1:N
    comb = zeros(1,length(t));
    for i = 1:multiple
        f = i*440 * 2^(spec(n,1) + spec(n,2)/12);
        comb = comb + fund(i)*sin(2*pi*f*t);
    end
    rv = rv + sin(2*pi*f*t);
  end
  % scale the signal to within (-1,1)
  rv = rv/N * 0.999;  
  sound(rv);
  plot(t(1:1000), rv(1:1000))
end
