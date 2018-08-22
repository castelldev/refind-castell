#!/bin/bash
for image in *svg;
	do 
	inkscape -z -f${image} -e${image%svg}png;
	done
