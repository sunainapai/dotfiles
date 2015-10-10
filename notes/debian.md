Configure APT data sources
==========================
Edit /etc/apt/sources.list and copy the deb entries from
https://wiki.debian.org/SourcesList.

The lines containing deb-src need not be copied. Append contrib and
non-free components to each line. An example below.

    deb http://httpredir.debian.org/debian/ jessie main contrib non-free
    deb http://httpredir.debian.org/debian/ jessie-updates main contrib non-free
    deb http://security.debian.org/ jessie/updates main contrib non-free


VirtualBox Guest Additions
==========================

  1. On Debian VM, run the following commands to install packages that
     would be required to run VirtualBox Guest Additions successfully.

        apt-get install make linux-headers-$(uname -r)

  2. In VirtualBox window, select from the menu,
     Devices > Insert Guest Additions CD Image.

  3. Right click on the CD icon on desktop and select 'Mount Volume'.

  4. In the shell, log in as root (su -), then enter the following.

        sh /media/cdrom/VBoxLinuxAdditions.run

  4. Reboot the VM after guest additions installation is complete.

        reboot

  5. After the reboot is complete, Debian XFCE desktop on the VM would
     automatically adjust its resolution according to the size of the
     VirtualBox window in which the VM is running. When the VM is
     running in full screen mode, the resolution is 1280x800.

  6. Go to VirtualBox Manager > Settings > General > Advanced. Set
     'Shared Clipboard' to 'Bidirectional'. This enables copy-paste to
     work across the host machine and the VM.
     

XFCE4 Panel
===========

  1. While logging into XFCE4, select the option to create one empty
     panel. If default panels are already created, then rm -r ~/.config,
     log out and log in.

  2. Drag and drop the panel to the right edge of the screen.

  3. Go to Applications Menu > Settings > Panel > Panel 1.

  4. Go to 'Items' tab and add the following items:
     - Applications Menu
        - Edit > Uncheck 'Show button title'
     - Terminal Emulator (drag and drop from Applications Menu)
     - Web Browser (drag and drop from Applications Menu)
     - Window Buttons
        - Edit > Uncheck all three options under 'Appearance'
     - DateTime
        - Edit > Layout, set Format: Time only
        - Edit > Date, set Format: Fri, 31 Dec 1999
        - Edit > Time, set Format: Custom: %I:%M

  5. Go to 'Appearance' tab and under 'Opacity', set 'Leave' to 0.

  6. Go to 'Display' tab and configure the following.
     - Mode: Deskbar
     - Enable: Lock panel
     - Enable: Don't reserve space on borders
     - Row Size (pixels): 64


Package Management
==================
Install the following packages using APT.

For small systems, the recommended APT command is apt-get.

For large systems, with complex dependency resolution requirement, the
recommended APT command is aptitude.

In future, apt may become the recommended tool for all systems.

Commands:

    apt-get update        # Update the local package index
    apt-get install git   # Install new package with dependencies
    apt-get remove git    # Remove a package, but not its configuration
    apt-get purge git     # Remove a package and its configuration
    apt-get autoremove    # Remove unrequired dependencies


Packages
========

    vim-gtk
    git

Configure applications
======================

  1. [Configure git](./git.md)
