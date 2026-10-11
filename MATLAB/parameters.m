% parameters.m A. Sahunalu 2026

% Gravity
params.g = 9.81;

% Linkage Lengths
params.L1 = [];
params.L2 = [];
params.L3 = [];

% Linkage Masses
params.m1 = [];
params.m2 = [];
params.m3 = [];

% Centers of Mass (Distance from joint to link's center of mass)
params.Lc1 = [];
params.Lc2 = [];
params.Lc3 = [];

% End Effector / Payload (Mass)
params.mEE = [];
params.payload = 0.5;
params.payloadSweep = [];

% Joint Limits (Angular range of each joint)
params.q1_min = [];
params.q1_max = [];

params.q2_min = [];
params.q2_max = [];

params.q3_min = [];
params.q3_max = [];

params.q4_min = [];
params.q4_max = [];

% Performance (Max reach, Max height, Move time)
params.requiredReach = [];
params.requiredHeight = [];
params.moveTime = [];

% Motors, (WIP)
params.motor1TorqueMax = [];
params.motor2TorqueMax = [];
params.motor3TorqueMax = [];
params.motor4TorqueMax = [];

% Design, (WIP)
params.torqueSafetyFactor = [];
