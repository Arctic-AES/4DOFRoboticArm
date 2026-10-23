
function [tauTotal, tauLinks, tauEE, tauPayload] = staticGravityTorque(q, params)

required = {'L1','L2','L3','m1','m2','m3', ...
            'Lc1','Lc2','Lc3','mEE','payload','g'};

for i = 1:numel(required)
    name = required{i};
    if ~isfield(params, name) || isempty(params.(name))
        error('Missing parameter: %s', name);
    end
end

q = q(:);

if numel(q) ~= 4
    error('Expected four joint angles.');
end

q2 = q(2);
q3 = q(3);
q4 = q(4);

c2 = cos(q2);
c23 = cos(q2 + q3);
c234 = cos(q2 + q3 + q4);

L1 = params.L1;
L2 = params.L2;
L3 = params.L3;

r2 = L1*c2 + L2*c23 + L3*c234;
r3 = L2*c23 + L3*c234;
r4 = L3*c234;

tauPayload = staticPayloadTorque(q, params);

tauEE = params.mEE * params.g * [0; r2; r3; r4];

tauLinks = params.g * [
    0;
    params.m1*params.Lc1*c2 + ...
    params.m2*(L1*c2 + params.Lc2*c23) + ...
    params.m3*(L1*c2 + L2*c23 + params.Lc3*c234);
    params.m2*params.Lc2*c23 + ...
    params.m3*(L2*c23 + params.Lc3*c234);
    params.m3*params.Lc3*c234
];

tauTotal = tauPayload + tauEE + tauLinks;

end

