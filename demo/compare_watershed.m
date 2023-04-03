function compare_watershed(filename)


% ImageJ watershed
mijread(filename);
MIJ.run('Threshold');

tic;
MIJ.run('Watershed');
toc

% Matlab watershed
mijread(filename);
MIJ.run('Threshold');
tsource = MIJ.getCurrentImage();
MIJ.run('Distance Map');
msource = MIJ.getCurrentImage();

tic;
ws = watershed(255-msource);
toc

dam = (ws==0)*255;
MIJ.createImage(or(dam, double(255-tsource))*255);