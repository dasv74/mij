# MIJ Matlab-ImageJ connector
<small>Version 1.4.0</small>

**A Java package for running ImageJ and Fiji within Matlab**

*Daniel Sage, Biomedical Image Group, EPFL, Switzerland*

---

MIJ offers the missing link between two imaging software: ImageJ/Fiji and Matlab. 
The goal of the package mij.jar is to provide static methods to exchange images and volumes. 
MIJ allows also to access to all built-in functions of ImageJ and to third-part plugins of ImageJ. 


<b>Information:</b> https://bigwww.epfl.ch/sage/soft/mij/


__Distribution on Fiji__

Thanks to the Fiji team, MIJ is now super-easy to use using a Matlab script Miji.m 
which is integrated in Fiji. 

__Distribution on Mathworks__

[Distribution on Mathworks](https://www.mathworks.com/matlabcentral/fileexchange/47545-mij-running-imagej-and-fiji-within-matlab)

__Reference__ 

Daniel Sage, Dimiter Prodanov, Jean-Yves Tinevez and Johannes Schindelin, MIJ: Making Interoperability Between ImageJ and Matlab Possible ImageJ User & Developer Conference, 2012, Luxembourg

__License__ 

GNU General Public License v3.0 — https://www.gnu.org/licenses/why-not-lgpl.html

[Poster of MIJ](https://bigwww.epfl.ch/sage/soft/mij/Poster-MIJ-Daniel-Sage.pdf)


![screenshot](splash.jpg "screenshot")

Installation
------------
**Set up the path**

Copy the **mij.jar** and **ij.jar** into the **java** or **java/jar** folder of Matlab.
  
Extend the java class path to mij.jar and ij.jar, using the Matlab commands: 

- javaaddpath 'C:\Program Files\MATLAB\R2023b\java\jar\mij.jar'
- javaaddpath 'C:\Program Files\MATLAB\R2023b\java\jar\ij.jar'

or on MacOXS

- javaaddpath /Applications\MATLAB_R2023b.app/java/jar/mij.jar
- javaaddpath /Applications\MATLAB_R2023b.app/java/jar/ij.jar

**Start ImageJ**

Start MIJ/ImageJ by running the Matlab command: 

- MIJ.start()
- or MIJ.start('/Applications/ImageJ)'


