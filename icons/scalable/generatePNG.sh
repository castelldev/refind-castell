#!/bin/bash
for image in *svg;
	do 
	inkscape -z -f${image} -w 64 -h 64 -e${image%svg}png;
	done
mv -v *.png /home/onecastell/refind-castell/icons/64
for image in *svg;
	do 
	inkscape -z -f${image} -w 128 -h 128 -e${image%svg}png;
	done
mv -v *.png /home/onecastell/refind-castell/icons/128
for image in *svg;
	do 
	inkscape -z -f${image} -w 256 -h 256 -e${image%svg}png;
	done
mv -v *.png /home/onecastell/refind-castell/icons/256
