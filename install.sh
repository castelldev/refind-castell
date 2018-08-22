#!/bin/bash
######### RUN AS ROOT #########

#Root permission check
if [ $USER != "root" ];
then
    echo "Please run script as root."
    exit 128
fi

if [ "$1" == 'dev' ];
then 
    cp -vr $PWD /boot/efi/EFI/refind/
    echo "Developer Override"
    exit 1
fi
#Install theme if not already installed to ESP
if [ -d "/boot/efi/EFI/refind/refind-castell" ];
then
    echo "Theme already installed."
else
    cp -vr $PWD /boot/efi/EFI/refind/
    echo "Installed Theme to ESP Sucessfully."
fi
