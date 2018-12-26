VSL is a simple, easy to use software for steganography, steganalysis and 
watermarking. It gives scientists and students a powerful tool for 
conducting wide range of experiments involving different types of message 
embedding, diverse attacks (employing image processing algorithms) and 
steganalysis with the use of popular methods. 
This document explains how to use VSL.

VSL is available at 
http://vsl.sourceforge.net
Please read the LICENSE file before using VSL.

Table of Contents
=================

- Requirements and Installation
- Run application
- Using application
- Tips on practical use
- Configuration
- Creating new modules
- Modules usage
- Additional informations

Requirements and installation
=============================

You need Java 1.5 (5.0) or above to run VSL. 
You may need to increase maximum Java heap size.

Run application
===============

You can run VSL from OS context menu, however it is recommended to start it
from command line:

	java -jar <java arguments> vsl-app-<VERSION>.jar

If you run application from context menu, it is most likely that vsl log file
will be located in your system's temporary directory.

Using application
=================

You add new modules to VSL desktop by dropping items from modules list. 
To run experiments you arrange modules in processing flows by connecting 
them. All flows must begin with Input module. You can make loops by 
connecting module to a module that is in earlier stage of a flow. There can 
be more than one flow at a time. 
VSL can write and read images that are covered by Java. You may want to 
install JAI (Java Advanced Imaging API) in order to be able to work with 
more image readers and writers.

Tips on practical use
=====================

* Note that Input module can be created by dropping set of images/directories 
  on main window. 
* You can change parameters quickly by using context menu on parameters 
  fields (right click on any parameter in parameters window)
* Almost every action has appropriate key shortcut
* Where it is possible application provides helpful tool tips
* Install JAI to use more file formats

Configuration
=============

You can configure VSL by editing files in etc directory. File vsl.properties 
determines main options, while modules.xml describes modules configuration.
See both files for more details. To configurate logging edit log4j.properties 
file from lib directory.

Creating new modules
====================

In order to create new module one must implement one of a interfaces from 
vsl-commons library. For example if new steganographic method should be 
created, it must implement SteganographicTechnique interface. When 
new module jar is created, two files must be edited: etc\modules.xml and 
MANIFEST.MF inside vsl-app jar. 
In modules.xml at least name and class of the created module should be 
provided. Next, to make invocation of the module possible, classpath of 
the vsl-app jar must be extended with path to the new module.

Modules usage
=============

All external modules can be executed from command line:

	java -jar vsl-module-<TYPE>-<NAME>.jar

For details you can execute them with --help switch:

	java -jar vsl-module-<TYPE>-<NAME>.jar --help

Additional informations
=======================

For additional informations please visit VSL website or email 
bend-up@users.sourceforge.net
