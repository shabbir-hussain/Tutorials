%this script tries to identify the motor cortex in the brain
clear all;clc;
load('MOTOR.mat');
motorSize = size(MOTOR);

%TaskRef
ON = ones(1,10);
OFF = zeros(1,10);
taskRef = [OFF ON OFF ON OFF ON OFF ON OFF];

%find the correlation between each pixel and the reference
corrImage = zeros(64,64,36);

pixels = reshape(MOTOR, [],90);

corrImage = 1 - pdist2(pixels, taskRef, 'correlation');
corrImage = reshape(corrImage, 64,64,36);

%zeros all the values less than or equal to zero
corrMask = corrImage<=0;
corrImage(corrMask) = 0;

for i=1:36
    imagesc(corrImage(:,:,i));
    text = sprintf('Correlation Image at slice %d',i);
    title(text);
    pause;
end;