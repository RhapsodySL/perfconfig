This config is completely unmaintained and I don't have any current intention of updating it. It should work as-is (as of 7/24/18) but any functionality broken in the future is unlikely to be fixed.
==========


Rhapsody's Performance Config
==========
Making Team Fortress 2 faster since 2014

### What it is
Rhapsody's Performance Config is a project intended to supercede Chris' dx9frames config, and be superior in every way. Since Chris' configs were abandoned, this one is the better choice, being that it's active and is updated with more convars that increase performance. Alongside that, it's documented much more thoroughly than Chris' was, and is avaliable in the file for anyone interested.

This config uses Chris' dx9frames as a base, but is completely re-organized in a neater fashion, and is much more user-friendy and intuitive. Everything but the core changes are mentioned and configurable in an in-game wizard, allowing you to choose things as you want them. These changes are saved between sessions thanks to the magic of host_writeconfig, as well, so you'd only need to actually edit the config if you're an advanced user and want even more control.

### How to use
In order to use this config, you first have to download it. You can do this going to [the project site](http://rhapsodysl.github.io/perfconfig/) and pressing one of the two buttons at the top; either Raw Text or ZIP. If you download it as a ZIP, then all you have to do is extract the archive and find autoexec.cfg. Once you do, just go to the following filepath, and place it there.

`C:\Program Files (x86)\Steam\SteamApps\common\Team Fortress 2\tf\cfg`

or if that doesn't work, go to

`C:\Program Files\Steam\SteamApps\common\Team Fortress 2\tf\cfg`

For Mac:

`Users/UserName/Library/Application Support/Steam/SteamApps/common/Team Fortress 2/tf/cfg`

For Linux:

`~/.steam/steam/steamapps/common/Team\ Fortress\ 2/tf/cfg`
 
After you do that, just start up your game and type 'setup' in console, and you'll be good to go.

If you chose Raw Text, then just go to the filepath stated above, copy the text from the browser window, and paste it into your autoexec.cfg file. If you don't have an autoexec.cfg file, then create it.

###Setting up the auto-updater for Windows

1. Download the config. You'll see  two batch files and wget.exe in the root of the directory once you extract it. Move the extracted folder to a safe location where you won't delete it. Select 2a or 2b from this point depending on your Team Fortress 2 installation directory.
2a. Don't do anything if you have Team Fortress 2 installed in the default installation path (if it's in one of the above installation paths, it's in the default). Just run updater.bat to ensure it works. Look in your cfg directory. The autoexec file should now be updated. Now to make it run automatically and silently.
2b. If you have Team Fortress 2 installed somewhere other than the default directory, open updater-legacy.bat. Edit the filepath in the grep line to your installation path, in the same format. Save the file, and run it to make sure it works.
3. Open Task Scheduler, and click Create Task on the right. Enter a recognizable name and description so that you know you made it so you can find it again later if needed.

Under Security Options in the same tab, you should see a button that says Change User or Group. Press that, and under "Enter the object name to select", put in SYSTEM. Afterwards, press OK.

Go to the Triggers tab, and press New in the bottom right. At this point, go wild, and select whichever triggers you'd like. Ideally, you should make it run at a certain time every day, but you can also make it run automatically whenever the computer is idle for X amount of time.

Go to the Actions tab, and press New in the bottom right. Under Program/Script, put the filepath to the batch file that was in the download. the batch file needs to be at the end of the filepath (so it should end with \update.bat, or updater-legacy.bat if you're using that instead). Next to "Add arguments (optional)", put /min in the box. In "Start in (optional)", put the filepath to the directory that contains the batch file and wget.exe. However, only put the filepath, and don't include the .bat file at the end like you did initially. Press OK.

Go to the Settings tab, and under "If the task is already running, then the following rule applies:", change the dropdown to "Stop the existing instance". Afterwards, press OK. Congratulations, you set up the auto updater!

###Setting up the auto-updater for Linux

1. Download the config and extract it.
2. Simply run the `update.sh` script from a terminal or from a file manager. (and you can drag it to your desktop for convenient access)
3. You can, of course, make it run automatically by reading http://kvz.io/blog/2007/07/29/schedule-tasks-on-linux-using-crontab/ .


If the auto updater for either operating system fails to work, then please tell me by making an issue on the github page. For the Windows updater, replace EXIT with PAUSE, and post the screenshot so I can see what happened.
