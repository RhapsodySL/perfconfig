@ECHO off

REM | This is the auto-updater. Read the notes in the README.MD file to know how to use this properly.
REM | This updater detects if you run a 64-bit or 32-bit operating system, and installs the config to the correct path.
REM | If you use a path other than the default installation path, then use updater-legacy.bat instead, and replace the
REM | path in the grep line with your installation's filepath instead. For simpleness, and so that you don't break
REM | the script, just use updater-legacy.bat if you need to do that; it's a lot simpler.
REM | 
REM | Final note; I haven't actually tested the 32-bit line since I don't have a 32-bit OS. If this doesn't work properly,
REM | then please add an issue on the github page at https://github.com/RhapsodySL/perfconfig. Thanks.

SET CURRENTDIR="%cd%"

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
wget https://raw.githubusercontent.com/RhapsodySL/perfconfig/master/tf/cfg/autoexec.cfg -O "C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\tf\cfg\autoexec.cfg" --no-check-certificate
EXIT

:32BIT
wget https://raw.githubusercontent.com/RhapsodySL/perfconfig/master/tf/cfg/autoexec.cfg -O "C:\Program Files\Steam\steamapps\common\Team Fortress 2\tf\cfg\autoexec.cfg" --no-check-certificate
EXIT
