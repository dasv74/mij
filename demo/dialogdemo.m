function dialogdemo;
    
import ij.*;
import ij.gui.*;

    nx = 100;
    ny = 100;
    % Create the dialog box
	gd = GenericDialog('Flip a square');
	gd.addNumericField('n', 100.0, 1);
	gd.addNumericField('x', nx/2, 0);
	gd.addNumericField('y', ny/2, 0);
		
	% Show the dialog box
	gd.showDialog();

	
