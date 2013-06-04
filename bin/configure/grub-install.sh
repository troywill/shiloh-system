#!/bin/bash

DEVICE=/dev/sda #change this as desired!
modprobe dm-mod
sleep 1
grub-install --target=i386-pc --recheck --debug $DEVICE
cp --verbose /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
