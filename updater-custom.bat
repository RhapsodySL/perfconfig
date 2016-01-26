@ECHO off
REM | This is the auto-updater. Read the notes in the README.MD file to know how to use this properly.
REM | This updater detects if you run a 64-bit or 32-bit operating system, and lets you install to where you want to.
REM | If you just want to write the config to autoexec.cfg then just use the regular updater.
REM | NOTE: You must run this manually once before setting the task!

REM | Final note; I haven't actually tested the 32-bit line since I don't have a 32-bit OS. If this doesn't work properly,
REM | then please add an issue on the github page at https://github.com/RhapsodySL/perfconfig. Thanks.

SET CURRENTDIR="%cd%"

:CheckLoc
IF DEFINED TF2CONFIGLOCATION (GOTO CheckOS) ELSE (GOTO SetLoc)

:SetLoc
SET /P location="Enter the path to the file you want to write the config to: "
SETX TF2CONFIGLOCATION "%location%"
ECHO The script has to exit to save your custom location. Run it again.
PAUSE 
EXIT 

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
cd "C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\tf\cfg\autoexec.cfg"
wget https://raw.githubusercontent.com/RhapsodySL/perfconfig/master/tf/cfg/autoexec.cfg -O "%TF2CONFIGLOCATION%" --no-check-certificate
EXIT

:32BIT
cd "C:\Program Files\Steam\steamapps\common\Team Fortress 2\tf\cfg\autoexec.cfg"
wget https://raw.githubusercontent.com/RhapsodySL/perfconfig/master/tf/cfg/autoexec.cfg -O "%TF2CONFIGLOCATION%" --no-check-certificate
EXIT