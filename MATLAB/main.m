% main.m A. Sahunalu 2026


clear;
clc;
close all;

parameters;

q_deg = [];

if isempty(q_deg)
    disp('Enter q_deg = [q1 q2 q3 q4]')
else
    q = deg2rad(q_deg);

    [tauTotal, tauLinks, tauEE, tauPayload] = ...
        staticGravityTorque(q, params);

    disp('Payload Torque [N*m]:')
    disp(tauPayload)

    disp('Link Torque [N*m]:')
    disp(tauLinks)

    disp('End Effector Torque [N*m]:')
    disp(tauEE)

    disp('Total Static Torque [N*m]:')
    disp(tauTotal)
end

