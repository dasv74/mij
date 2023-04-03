function imagej(img,title);

import ij.*;
import ij.process.FloatProcessor;

if(isempty(ij.IJ.getInstance))
     prog = ij.ImageJ;
else
     prog = ij.IJ.getInstance;
end

%check if not showing, if so, then show.
if(~prog.isShowing)
     prog.show;
end

[ny,nx,nz] = size(img);
nxy = nx*ny;
stack = ImageStack(nx, ny);
for k = 1: nz,
    slice = single(img(:,:,k));
    pixels = reshape(slice', nxy, 1);
    fp = FloatProcessor(nx,ny);
    fp.setPixels(single(pixels));
    pixels = stack.addSlice('', fp);
end

fp.resetMinAndMax;
imp = ImagePlus(title, stack);
imp.show
