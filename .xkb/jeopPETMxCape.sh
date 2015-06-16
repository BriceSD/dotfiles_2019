#!/bin/sh
killall xcape 2> /dev/null
${HOME}/.xkb/xcape/xcape -t '200' -e 'Shift_L=Escape;Shift_R=Escape;ISO_Level5_Shift=Tab;Super_L=space;Alt_L=Return;Control_R=Control_R|x;Control_L=Control_L|x'
