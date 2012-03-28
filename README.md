##Overview

This repository contains the majority of the files that I use to customize all aspects of the different programming related environments that I in on both osx and windows.

The repository consists of mainly the following:

* A set of automation scripts that can be modified and added to as needed.
* A set of dotfiles that work on both osx and windows (running mingw)
* Templates for the files that need to run cross platform
* A small set of expansion scripts run using [expansions](http://github.com/developwithpassion/expansions).

##Cautionary Note

* I have been promising to open source these to quite a few people for a while. Some of the scripts are obviously tuned to work according to a flow that works well for me. Even though some work has been done to allow these scripts to be portable and usable by others. I apologize in advance for the "assumptions" that are made about how the system is setup. A lot of the configuration scripts attempt to isolate those changes, but there may be areas that I missed. Since these scripts were
  initially written just for myself, there may still be a couple of areas where some of the assumptions about how the system is configured cause the scripts to fail. See these scripts as a good starting point for you to be able to support cross platform environment setup from a single set of scripts, dotfiles etc.

##Getting Started

Anything that pertains to a windows build here is making setup assumptions based on following the blog post [here](http://blog.developwithpassion.com/2012/03/12/repaving-a-new-window-7-vm/)

* Even though it is not required, to not have to fuss too much with the settings, create a folder under your home folder named:
  * repositories/developwithpassion
* Navigate to the folder you created above and make a clone of the repository (keep the devtools name). Feel free to fork the repository before you make a clone if you would like to send me pull requests.
* Navigate into the cloned folder in a shell prompt (on windows use the MingW shell)
* On windows issue the following command
    ```
    cp windows/mingw/*.* /c/utils/mingw/msys/1.0/etc/
    ```
* Exit your shell session
* Start a new shell session and navigate to your devtools folder
* Copy the settings_template file to a file named [your_login_user_name].settings
* Change the settings in the [your_login_user_name].settings file as needed
* Run
  ```
  ./kick_off
  ```
* Exit your shell session
* Start a new shell session and type devtools (this is an alias that should now be active)
* Run the script:
  ```
  update_vim_plugins
  ```

I have to warn you that you can expect to see error during the first couple of times running the script. It is rough, but it works. In lieu of better documentation around this right now, I am going to do a screencast/webinar that outlines how this whole setup works on both osx and windows.

Now you are pretty much ready to go. I have done this setup with a couple of people now and there are still some rough edges, but all in all, it works fairly well.

##Gotchas

###On Windows 

For the most seamless experience on windows I would recommend setting up your machine according to the post outlined [here](http://blog.developwithpassion.com/2012/03/12/repaving-a-new-window-7-vm/)

1. The autohotkey scripts are setup to assume that you are using your LWIN key to trigger the mnemonic entry modes (more on that later). When I am on a windows based contract, I will run a client specific windows VM under vmware fusion. I also have my keyboard shortcuts on osx setup so that my CapsLock key is the [Command key](https://skitch.com/jpboodhoo/8ccwh/system-preferences)

2. Even though I don't use it a lot, [executor](http://executor.dk/) is the launcher that I use on windows, and it is assumed to be setup to launch with the ALT-Q binding.


###On OSX

There are some setup scripts to run with regards to setting up [homebrew](http://mxcl.github.com/homebrew/) and [rvm](http://beginrescueend.com/), as well as a couple of other things to setup.

I plan to write about these things in the next little while (and/or) just do a webinar on it.


##Contributing

As always, feel free to fork and make modifications to the scripts etc. If you add something you find useful, please feel free to send me a pull request.

[Develop With Passion®](http://www.developwithpassion.com)
