##Overview

This repository contains the majority of the files that I use to customize all aspects of the different programming related environments that I in on both osx and windows.

The repository consists of mainly the following:

* A set of automation scripts that can be modified and added to as needed.
* A set of dotfiles that I have run successfully on:
  * Ubuntu
  * OSX
  * Windows (Cygwin/Msys)
* Templates for the files that need to run cross platform
* A small set of expansion scripts run using [expansions](http://github.com/developwithpassion/expansions).

##Cautionary Note

* I have been promising to open source these to quite a few people for a while. Some of the scripts are obviously tuned to work according to a flow that works well for me. Even though some work has been done to allow these scripts to be portable and usable by others. I apologize in advance for the "assumptions" that are made about how the system is setup. A lot of the configuration scripts attempt to isolate those changes, but there may be areas that I missed. Since these scripts were
  initially written just for myself, there may still be a couple of areas where some of the assumptions about how the system is configured cause the scripts to fail. See these scripts as a good starting point for you to be able to support cross platform environment setup from a single set of scripts, dotfiles etc.

##Preparation

* Even though it is not required, to not have to fuss too much with the settings, create a folder under your home folder named:
  * repositories/developwithpassion
  * Navigate to the folder you created above and make a clone of the repository (keep the devtools name). Feel free to fork the repository before you make a clone if you would like to send me pull requests.
  * Navigate into the cloned folder in a shell prompt


##Running On Windows

* For the most optimal experience it is strongly recommended to configure your windows machine with the base set of tools outlined [here](http://blog.developwithpassion.com/2012/03/12/repaving-a-new-window-7-vm/)

###MSYS

* Open up an msys session and navigate into the devtools folder you cloned above.
* Type in the following command:
```
./msys_kick_off
```
* Change the settings in the [your_login_user_name].settings file as needed
* Type in the following command:
  ```
  ./msys_kick_off
  ```
* Exit your shell session
* Start a new msys session and type devtools (this is an alias that should now be active)
* Run the script:
  ```
  update_vim_plugins
  ```
At this point vim should be configured, and autohotkey should be running with the scripts loaded in.

##Gotchas

1. The autohotkey scripts are setup to assume that you are using your LWIN key to trigger the mnemonic entry modes (more on that later). When I am on a windows based contract, I will run a client specific windows VM under vmware fusion. I also have my keyboard shortcuts on osx setup so that my CapsLock key is the [Command key](https://skitch.com/jpboodhoo/8ccwh/system-preferences)

2. Even though I don't use it a lot, [executor](http://executor.dk/) is the launcher that I use on windows, and it is assumed to be setup to launch with the ALT-Q binding.


###Running On OSX

* Open up an terminal session and navigate into the devtools folder you cloned above.

1. Run the command:
   ```
   ./osx_kick_off
   ```
2. Exit the terminal session
3. Start a new terminal session and navigate back to the devtools folder.
4. Run the following commands:
   ```
   ./osx_finish
   ```

##Contributing

As always, feel free to fork and make modifications to the scripts etc. If you add something you find useful, please feel free to send me a pull request.

[Develop With Passion®](http://www.developwithpassion.com)
