#!/bin/bash

chmod +x . fullboot.sh

if hash pkexec 2> /dev/null; then
pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY QT_X11_NO_MITSHM=1 /home/${USUARIO}/.openmakeboot-cfg/fullboot.sh
else
fullboot.sh
fi
