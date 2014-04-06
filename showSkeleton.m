figure;
FV = isosurface(V,0.5);
patch(FV,'facecolor',[1 0 0],'facealpha',0.3,'edgecolor','none');

hold on;
for i=1:length(S)
     L=S{i};
     plot3(L(:,2),L(:,1),L(:,3),'-','Color',rand(1,3));
end