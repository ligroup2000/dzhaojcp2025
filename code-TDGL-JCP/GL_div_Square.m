% 2D parallel plate capacitor problem
%
% Author: Chloros2 <chloros2@gmx.de>
% Created: 2018-05-13
%
% Copyright (C) 2018 Chloros2 <chloros2@gmx.de>
%
% This program is free software: you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see
% <https://www.gnu.org/licenses/>.
%

clear all;

addpath('ffmatlib');

[p,b,t,nv,nbe,nt,labels]=ffreadmesh('Square_mesh.msh');
[vh]=ffreaddata('Square_vh.txt');
[apsi_t1]=ffreaddata('Square_apsi_t1.txt');[apsi_t5]=ffreaddata('Square_apsi_t5.txt');[apsi_t10]=ffreaddata('Square_apsi_t10.txt');
[apsi_t20]=ffreaddata('Square_apsi_t20.txt');[apsi_t40]=ffreaddata('Square_apsi_t40.txt');
[cA_t1]=ffreaddata('Square_cA_t1.txt');[cA_t5]=ffreaddata('Square_cA_t5.txt');[cA_t10]=ffreaddata('Square_cA_t10.txt');
[cA_t20]=ffreaddata('Square_cA_t20.txt');[cA_t40]=ffreaddata('Square_cA_t40.txt');

%%%%%% 2D Patch (density map) Plot of apsi and cA
figure;
ffpdeplot(p,b,t,'VhSeq',vh, 'XYData',apsi_t1,'ColorMap',jet(150),'Mesh','off', 'Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t5,'ColorMap',jet(150), 'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t10,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t20,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t40,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');

figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t1,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t5,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t10,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t20,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');
figure;
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t40,'ColorMap',jet(150),'Mesh','off','Boundary','off','XLim',[0 1],'YLim',[0 1]);
ylabel('y');xlabel('x');

%%%%%% Mesh Plot

% figure;
% ffpdeplot(p,b,t, ...
%           'Mesh','on', ...
%           'Boundary','on', ...
%           'Title','Boundary/Edge (Capacitor Electrodes) and 2D Mesh');
% ylabel('y');xlabel('x');
% 
% %%%%%% 3D Surf Plot of |psi| and cA
% 
% figure;
% subplot(2,5,1);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t1,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of |psi| at t=1');
% ylabel('y'); xlabel('x'); zlabel('|psi|'); grid; axis tight;
% subplot(2,5,2);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t5,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of |psi| at t=5');
% ylabel('y'); xlabel('x'); zlabel('|psi|'); grid; axis tight;
% subplot(2,5,3);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t10','ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of |psi| at t=10');
% ylabel('y'); xlabel('x'); zlabel('|psi|'); grid; axis tight;
% subplot(2,5,4);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t20,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of |psi| at t=20');
% ylabel('y'); xlabel('x'); zlabel('|psi|'); grid; axis tight;
% subplot(2,5,5);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',apsi_t40,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of |psi| at t=40');
% ylabel('y'); xlabel('x'); zlabel('|psi|'); grid; axis tight;
% 
% subplot(2,5,6);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t1,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of curl(A) at t=1');
% ylabel('y'); xlabel('x'); zlabel('curl(A)'); grid; axis tight;
% subplot(2,5,7);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t5,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of curl(A) at t=5');
% ylabel('y'); xlabel('x'); zlabel('curl(A)'); grid; axis tight;
% subplot(2,5,8);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t10','ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of curl(A) at t=10');
% ylabel('y'); xlabel('x'); zlabel('curl(A)'); grid; axis tight;
% subplot(2,5,9);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t20,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of curl(A) at t=20');
% ylabel('y'); xlabel('x'); zlabel('curl(A)'); grid; axis tight;
% subplot(2,5,10);
% ffpdeplot(p,b,t,'VhSeq',vh,'XYData',cA_t40,'ZStyle','continuous','ColorMap',jet(150),'Mesh','off','Title','3D Patch Plot of curl(A) at t=40');
% ylabel('y'); xlabel('x'); zlabel('curl(A)'); grid; axis tight;
% 
% % %%%%%% Combine Quiver and Contour
% % 
% % figure;
% % 
% % ffpdeplot(p,b,t, ...
% %           'VhSeq',vh, ...
% %           'XYData',u, ...
% %           'Mesh','off', ...
% %           'Boundary','on', ...
% %           'XLim',[-2 2],'YLim',[-2 2], ...
% %           'Contour','on', ...
% %           'CColor','b', ...
% %           'XYStyle','off', ...
% %           'CGridParam',[150, 150], ...
% %           'ColorBar','off', ...
% %           'FlowData',[Ex,Ey], ...
% %           'FGridParam',[24, 24], ...
% %           'Title','Quiver+Contour Interpolation Plot');
% % 
% % ylabel('y');
% % xlabel('x');
% 
% %%%%%% Show Labels
% 
% % figure;
% % 
% % ffpdeplot(p,b,t, ...
% %           'Mesh','off', ...
% %           'Boundary','on', ...
% %           'BDLabels',labels, ...
% %           'BDShowText','on', ...
% %           'Title','Boundary Labels');
% 
% %%%%%% 3D Surf Plot Gouraud lighting of apsi
% 
% % figure(5);
% % 
% % ffpdeplot(p,b,t, ...
% %           'VhSeq',vh, ...
% %           'XYData',apsi_t1, ...
% %           'ZStyle','continuous', ...
% %           'Mesh','off', ...
% %           'CBTitle','|psi|', ...
% %           'Title','Gouraud of |psi|');
% % ylabel('y');
% % xlabel('x');
% % zlabel('|psi|');
% % grid;
% % 
% % lighting gouraud;
% % view([-47,24]);
% % camlight('headlight');
% % 
% % axis tight;
% 
% %%%%%% 3D Surf Plot Gouraud lighting of cA
% 
% % figure(6);
% % 
% % ffpdeplot(p,b,t, ...
% %           'VhSeq',vh, ...
% %           'XYData',cA_t1, ...
% %           'ZStyle','continuous', ...
% %           'Mesh','off', ...
% %           'CBTitle','curl A', ...
% %           'Title','Gouraud of curl A');
% % ylabel('y');
% % xlabel('x');
% % zlabel('curl A');
% % grid;
% % 
% % lighting gouraud;
% % view([-47,24]);
% % camlight('headlight');
% % 
% % axis tight;
