#!/usr/bin/env sh
wget https://raw.githubusercontent.com/RhapsodySL/perfconfig/master/tf/cfg/autoexec.cfg -O ~/".steam/steam/steamapps/common/Team Fortress 2/tf/cfg/autoexec.cfg" --no-check-certificate
DONEMESSAGE="Config has been updated."
echo "$DONEMESSAGE"
if [ -n "$KDE_FULL_SESSION" ]
    # We're running in KDE.
    then kdialog --msgbox "$DONEMESSAGE"
else
    # Assuming we're running in a GTK environment.
    zenity --info
fi
