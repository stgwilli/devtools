##Overview

This repository contains the majority of the files that I use to customize all aspects of the different programming related environments that I in on both osx and windows.

The repository consists of mainly the following:

* A set of automation scripts that can be modified and added to as needed.
* A set of dotfiles that work on both osx and windows (running mingw)
* Templates for the files that need to run cross platform
* A small set of expansion scripts run using [developwithpassion_expander](http://github.com/developwithpassion/developwithpassion_expander).

##Cautionary Note

* I have been promising to open source these to quite a few people for a while. Some of the scripts are obviously tuned to work according to a flow that works well for me. Even though some work has been done to allow these scripts to be portable and usable by others. I apologize in advance for the "assumptions" that are made about how the system is setup. A lot of the configuration scripts attempt to isolate those changes, but there may be areas that I missed. Since these scripts were
  initially written just for myself, there may still be a couple of areas where some of the assumptions about how the system is configured cause the scripts to fail. See these scripts as a good starting point for you to be able to support cross platform environment setup from a single set of scripts, dotfiles etc.

##Getting Started

1. Clone the repository (on window make sure you clone to a space-less path)
2. Navigate into the cloned folder
3. Copy the settings_template file to a file named [your_login_user_name].settings
4. Rerun the kick_off script

