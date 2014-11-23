Setting up the Auto Updater

I spent the last hour and a half working on figuring out how to make a non-intrusive auto-updating setup with minimal dependencies, and I came up with this. It'll require configuration on your part, since I can't really determine where your game directory is, but it's easy enough.

1. Download the config. You'll see a batch file and wget.exe in the root of the directory once you extract it. Move the extracted folder to a safe location where you won't delete it.
2. Open the batch file in a program like Notepad or Notepad++. Modify the path past -o to the path of your cfg folder in-game. The one I put will work for the default configurations, I think, but since I don't use the default path myself I can't check that. MAKE SURE to keep the --no-check-certificate flag after the filepath or else the updater won't work.

Save and launch the batch file and look in your cfg directory. The autoexec file should now be updated. Now to make it run automatically and silently.

3. Open Task Scheduler, and click Create Task on the right. Enter a recognizable name and description so that you know you made it so you can find it again later if needed.

Under Security Options in the same tab, you should see a button that says Change User or Group. Press that, and under "Enter the object name to select", put in SYSTEM. Afterwards, press OK.

Go to the Triggers tab, and press New in the bottom right. At this point, go wild, and select whichever triggers you'd like. Ideally, you should make it run at a certain time every day, but you can also make it run automatically whenever the computer is idle for X amount of time.

Go to the Actions tab, and press New in the bottom right. Under Program/Script, put the filepath to the batch file that was in the download. the batch file needs to be at the end of the filepath (so it should end with \update.bat). Next to "Add arguments (optional)", put /min in the box. In "Start in (optional)", put the filepath to the directory that contains the batch file and wget.exe. However, only put the filepath, and don't include the .bat file at the end like you did initially. Press OK.

Go to the Settings tab, and under "If the task is already running, then the following rule applies:", change the dropdown to "Stop the existing instance". Afterwards, press OK. Congratulations, you set up the auto updater!