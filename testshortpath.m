%   % Load a maze image
I1=im2double(imread('images/maze.gif'));
%   % Convert the image to a speed map
SpeedImage=I1*1000+0.001;
%   % Set the source to end of the maze
SourcePoint=[800;803];
%   % Calculate the distance map (distance to source)
DistanceMap= msfm(SpeedImage, SourcePoint); 
%   % Show the distance map
figure, imshow(DistanceMap,[0 3400])
%   % Trace shortestline from StartPoint to SourcePoint
StartPoint=[9;14];
ShortestLine=shortestpath(DistanceMap,StartPoint,SourcePoint);
%   % Plot the shortest route
hold on, plot(ShortestLine(:,2),ShortestLine(:,1),'r')