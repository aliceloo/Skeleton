function show3D(V,t)
figure('DefaultAxesXtick',[],'DefaultAxesYtick',[],...
        'DefaultAxesFontSize',8,'color','w')

map = pink(90);
XR = ( V-min(V(:)) )/( max(V(:))-min(V(:)) )*255;
Ds=XR;
%Ds = smooth3(XR,'box',3);
hiso = patch(isosurface(Ds,5),'FaceColor',[1,.75,.65],'EdgeColor','none');
%hcap = patch(isocaps(XR,5),'FaceColor','interp','EdgeColor','none');
colormap(map)
daspect(gca,[1,1,.4])
lightangle(305,30);
set(gcf,'Renderer','zbuffer'); lighting phong
isonormals(Ds,hiso)
%set(hcap,'AmbientStrength',.6)
set(hiso,'SpecularColorReflectance',0,'SpecularExponent',50)
set(gca,'View',[-45,30],'Box','On');
axis tight
sizeV=size(V);
axis([0 sizeV(1) 0 sizeV(2) 0 sizeV(3)])
title(t)
end