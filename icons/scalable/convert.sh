#!/bin/bash
for image in *svg;
	do 
	inkscape -z -f${image} -w 128 -h 128 -e${image%svg}png;
	done
