REM | Use this script to remove the custom location set with updater-custom.bat.
REM | Once this script is run, you must run updater-custom.bat to set a new location.

IF DEFINED TF2CONFIGLOCATION (REG DELETE HKCU\Environment /V TF2CONFIGLOCATION /F)