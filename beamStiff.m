function [Ke] = beamStiff(beam)

k11 = beam.A * beam.E / beam.l;
k22 = 12 * beam.E * beam.I / beam.l^3;
k23 = 6 * beam.E * beam.I / beam.l^2;
k33 = 4 * beam.E * beam.I / beam.l;
k36 = 2 * beam.E * beam.I / beam.l;

Ke = [k11     0       0      -k11    0       0
      0       k22     k33    0       -k22    k23
      0       k23     k33    0       -k23    k36
      -k11    0       0      k11     0       0
      0       -k22    -k23   0       k22    -k23
      0       k23     k36    0      -k23     k33];
     

end