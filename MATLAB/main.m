% main.m A. Sahunalu 2026

clear;
clc;
close all;

parameters;

q_deg = []; % Joint angles in degrees

if isempty(q_deg)
    disp('Enter q_deg = [q1 q2 q3 q4]') % Inputs
else
    q = deg2rad(q_deg); % Degrees to Radians

    tauPayload = staticPayloadTorque(q, params); % Joint torque at given angle

    disp('Payload Torque [N*m]:') 
    disp(tauPayload)
end
