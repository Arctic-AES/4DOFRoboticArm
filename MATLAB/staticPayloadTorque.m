function tauPayload = staticPayloadTorque(q, params)

q2 = q(2);
q3 = q(3);
q4 = q(4);

Fpayload = params.payload * params.g;

r2 = params.L1*cos(q2) ...
   + params.L2*cos(q2 + q3) ...
   + params.L3*cos(q2 + q3 + q4);

r3 = params.L2*cos(q2 + q3) ...
   + params.L3*cos(q2 + q3 + q4);

r4 = params.L3*cos(q2 + q3 + q4);

tauPayload = [0;
              Fpayload*r2;
              Fpayload*r3;
              Fpayload*r4];

end
