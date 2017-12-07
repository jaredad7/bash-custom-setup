# Custom Bash Terminal for a New Developer

## What Does This Provide?

Installs homebrew. Installs Predix CLI. Creates `.bash_profile` file in home directory. Adds scripts for extra functionality and aliases them for reference in any directory. These will be installed in the folder `~/.custom_bash_scripts/`. Installs the following basic developer tools using Homebrew:

- Java
- Python
- Python3
- Maven
- Node

Installs crontab command for updating homebrew every day at lunchtime.

## What Does `.bash_profile` Contain?

SSID detection to automatically set proxy only when on BLUESSO. Linux-style text decoration for ease of use. Adds Git tab-completion functionality. Helpful ls aliases.

### Can I still customize my .bash_profile?

You could customize your .bash_profile, but it would be overwritten anytime your reran the setup script for this project. 

Instead, you can find a file called .secondary_profile in your home directory. .bash_profile will source this file at the end of its own execution. Put any custom startup commands here.

### Aliases for all additional functionality scripts. Comprehensive list below:

## How to Install

Simply clone the repository, cd into it, and run

`chmod 755 setup.sh`

`source ./setup.sh [options]`

If you do not use `source` when running the script, you will need to restart your terminal or run `source ~/.bash_profile`

## How to Contribute

Please contribute by adding your scripts to the `files/custom_bash_scripts/` directory and aliasing them in the `.bash_profile`. Follow the aliasing scheme for all the other scripts. Finally, list your script with the aliased command in the list above.

If you think something else ought to be installed, follow the detection/installation scheme in setup.sh and add it.

If you think something else needs to be added to .bash_profile, feel free to add that, as well.

**See ideas.txt for good ideas that you can try to implement if you are interested.**
