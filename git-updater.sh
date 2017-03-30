#!/usr/bin/env sh
git --no-pager show origin/HEAD:tf/cfg/autoexec.cfg > ~/".steam/steam/steamapps/common/Team Fortress 2/tf/cfg/autoexec.cfg"
DONEMESSAGE="Config has been updated."
echo "$DONEMESSAGE"
if [ -n "$KDE_FULL_SESSION" ]
    # We're running in KDE.
    then kdialog --msgbox "$DONEMESSAGE"
else
    # Assuming we're running in a GTK environment.
    zenity --info
fi
