%This script finds the most active regions by taking the difference
%Of pixels between ON and OFF times

%this script tries to identify the motor cortex in the brain
clear all;clc;
load('MOTOR.mat');
motorSize = size(MOTOR);

%TASK mask
taskOFFMask = [1:10 21:30 41:50 61:70 81:90];
taskONMask = [11:20 31:40 51:60 71:80];


%get the average
MeanOFF = mean(MOTOR(:,:,:,taskOFFMask),4);
MeanON = mean(MOTOR(:,:,:,taskONMask),4);

%take the differrence
DiffImg = MeanON - MeanOFF;

%zeros all the values less than or equal to zero
diffmask = DiffImg<=0;
DiffImg(diffmask) = 0;

for i=1:36
    imagesc(DiffImg(:,:,i));
    text = sprintf('Difference Image at slice %d',i);
    title(text);
    pause;
end;