#!/bin/sh
#************************************Author Information**************************************
				
#				     Danula Godagama 
#			    	 danula.godagama@uky.edu 
#			        University of Kentucky 
#				       04/02/2020 

#**************************************File Information***************************************
#				       Install.sh
#Run with sudo ./Install.sh
#This shell script install the SIS3153 Kmax driver components.
#This script should be run from this directory(SIS3153_Kmax_Driver).
#It assumes that the Kmax_Stuff folder is located in the home directory.
#*********************************************************************************************

if [ ! -d ~/Kmax_Stuff ]; then

	echo "Installer couldn't find the Kmax_Stuff folder in the home directory!"
	echo "Installation terminated !"
	exit 0

	
else
	cp ./libSIS3153.so ~/Kmax_Stuff/Extensions/Linux-amd64
	cp ./SIS3153.jar ~/Kmax_Stuff/Extensions/Linux-amd64
	cp ./SIS3153_Controller.mdr ~/Kmax_Stuff/Extensions/VME.MDRL
	chmod +x ~/Kmax_Stuff/Extensions/Linux-amd64/SIS3153.jar
	echo "Installation successful !!!"
	

fi
