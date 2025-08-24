# PROXEEZ

PROXEEZ is a handy little tool that converts all of the vidoe files in a folder to Low Bitrate proxies with a single command.

Bulk proxy-making without opening up an NLE or typing a whole ffmpeg command out is something I've been thinking about for a few months ever since the my project brought seemingly every computer to its knees. With the increasingly huge and tough files that cameras spit out nowadays, its almsot impossible to not have them.

Its my attempt at making the tool that I wanted to have, its not done particularly well and its probably not very efficient and if anyone has any improvements I'd be very grateful - but it works for now!

----
SETUP INFO: 
- "proxeez.bat" is set up to go in System32 to make the command <b><em> proxeez </em></b> usable without adding to system path (it was quicker)
- the folder "Proxeez" and its contents is set up to be placed in <b><em>C:\ </em></b> The only reason for this is that's where my ffmpeg folder is. But it also makes the direcotry shorter.

I'm interested in compiling into an installer but frankly I have no idea how they work.

YOU MUST CD INTO THE DIRECTORY WITH THE MEDIA TO TRANSCODE BEFORE YOU RUN THE PROGRAM!!!

--------------
Tested Codecs and Formats:

h264 h265 DNxHR DNxHD XAVC ProRes QuickTime MPEG4
  
--------------
COMMANDS:
<em><b>proxeez</em></b> runs the proxeez program

<em><b>proxeez help</em></b> opens the help and about page!

------
Things that haven't been tested:
- High Frame Rate (anything >60)
- Any other codec not listed above
- RAW
- Colour Space Transform

------------
Future Plans:
- MacOS version
- Better windows version (either in powershell or a fully stand alone program)

------
Thanks for checking out PROXEEZ! <3
