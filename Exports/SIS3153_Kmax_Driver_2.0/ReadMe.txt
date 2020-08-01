
*********************************************************************************
				Kmax SIS3153 driver 2.0 (07/25/2020)
*********************************************************************************
Kmax SIS3153 driver supports the STRUCK SIS3153 VME controller to function alongside 
with Kmax in a LINUX environment. Although SIS3153 controller supports both USB 3.0
and optical connectivity, this driver currently supports only the USB interface.    

Kmax SIS3153 driver consists of 3 components.

1) SIS3153 Module descriptor resource library(SIS3153_Controller.mdr)
This is an ASCII file located at Kmax_Stuff/Extensions/VME.MDRL 
Kmax uses this file to find the appropriate driver files for the SIS3153 device. 


2) SIS3153 Java class (SIS3153.jar)
	
This is a java class that implement the KmaxDriver interface. This class is 
packaged as a jar file(SIS3153.jar). It and must be located at 
Kmax_Stuff/Extensions/Linux-amd64. 


3) SIS3153 native library(libSIS3153.so) 
SIS3153 java class depends on this native library to communicate with the hardware device.
The native library must be located at Kmax_Stuff/Extensions/Linux-amd64. 
This library requires libusb installed on the host computer.

*********************************************************************************
				Installation
*********************************************************************************


SIS3153 driver can be installed in your Kmax environment by simply running the install.sh script. 
This script assumes that the Kmax_Stuff folder is located in the home directory.
If this is not the case, user may change the script or manually copy the driver 
files to the appropriate locations described above. 

*********************************************************************************
				SIS3153_Test Kmax toolsheet
*********************************************************************************

This Kmax toolsheet demonstrates techniques for configuring and testing the STRUCK SIS3153 controller module.
To use this toolsheet you need,

	1) A host computer with,
		A LINUX OS and libusb installed 
		
	2) A STRUCK SIS3153 VME controller connected to a VME crate 


readInt() and writeInt() method are used in Kmax runtime to perform I/O functions with SIS3153 device. 
The following address modifier codes are supported by the driver.

0x9 	VME A32D32 data access 			R/W
0x8 	VME A32MBLT64 				Read
0xB 	VME A32BLT32 				Read
0X260 	VME A32 2ESST320 			Read
0x1000 	SIS3153 internal register access	R/W



*********************************************************************************
				Contact 
*********************************************************************************
This program is developed by the University of Kentucky as a part of a project 
of building a DAQ system to be used in two nuclear physics experiments at HIGS and LANL. 
It's being distributed amoung the Kmax user community to freely use. 
Please don't hesitate to inform us of any bugs/errors you might encounter using this program.

danula.godagama@uky.edu
05/19/2020





	
	
