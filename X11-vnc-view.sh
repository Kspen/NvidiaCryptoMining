#!/bin/bash
x11nvc -storepasswd
x11vnc -rfbauth ~/.vnc/passwd -display :0 -auth ~/.Xauthority

