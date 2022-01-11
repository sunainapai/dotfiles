$HOME Setup
===========

Create shell rc files depending on which shell is being used. To check
the shell being used, enter these commands:

    dscl . -read ~ UserShell
    echo $SHELL

Then create shell rc files for shells that need to be configured with
the setup script. For example:

    touch ~/.zshrc

To undo any existing setup and setup the home directory, enter this
command:

    ./setup

To undo the setup for home directory, enter this command:

    ./setup rm
