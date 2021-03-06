function visualizePolar(rhos)
% plot a compass-like prediction confidence score. Draw 0 as a blue circle. See the 2nd Column in Figure 8 for example.
% Please cite this paper if you use this code:
% J. Xiao, K. A. Ehinger, A. Oliva and A. Torralba
% Recognizing Scene Viewpoint using Panoramic Place Representation
% Proceedings of 25th IEEE Conference on Computer Vision and Pattern Recognition (CVPR2012)

if nargin<1
    % example
    rhos = [ -0.1345  -0.1617  -0.1515   0.7465  -0.1714  -0.1611  -0.1505  -0.8683  -0.1278     -0.1     -0.1     -0.1];
end

nOrientation = numel(rhos);

rhos = rhos + 1;
theatas =  -pi:(2*pi/nOrientation):pi-(2*pi/nOrientation);
theatas = -theatas;
rhos = rhos([(end/4+1):end 1:end/4]);
theatas(end+1) = theatas(1);
rhos(end+1) = rhos(1);

clf
polarMy(theatas,max(rhos,0),'r-');
hold on
polarMy(theatas,max(rhos,0),'ko');
hold off



