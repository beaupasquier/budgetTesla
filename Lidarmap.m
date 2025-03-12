% Run the simulation
simOut = firstSimulation();

% Create a pointCloud array from the recorded data
ptCloudArr = helperGetPointCloud(simOut);

%%
function ptCloudArr = helperGetPointCloud(simOut)

% Extract signal
ptCloudData = simOut(PointClouds);

% Create a pointCloud array
ptCloudArr = pointCloud(ptCloudData(:,:,:,1));

for n = 2 : size(ptCloudData,4)
    ptCloudArr(end+1) = pointCloud(ptCloudData(:,:,:,n));  %#ok<AGROW>
end
end