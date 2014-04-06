clear;
clc;
% % Read Blood vessel image
%load('images/vessels3d');
%load('images/med-1.mat');
med_data =load('images/HJ1.mat');
%what is slice...
%slice = floor(med_data.sizeV(3) / 2);
f = med_data.HJ1;
%Compute Hessian Filter
V = logical(f);
% % Note, this data is pre-processed from Dicom ConeBeam-CT with V = imfill(Vraw > 30000,'holes');
%
% % Use fastmarching to find the skeleton
S=skeleton(V);
figure;
FV = isosurface(V,0.5);
patch(FV,'facecolor',[1 0 0],'facealpha',0.3,'edgecolor','none');

hold on;
for i=1:length(S)
     L=S{i};
     plot3(L(:,2),L(:,1),L(:,3),'-','Color',rand(1,3));
end
