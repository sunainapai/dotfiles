macOS Setup
===========

Customize Trackpad
------------------

 1. Go to the Apple menu > *System Preferences* > *Trackpad*.
 2. Select *Tap to click*.
 3. Go to the Apple menu > *System Preferences* > *Trackpad* > *More
    Gestures*.
 4. Select *App Expose*.


Map Caps Lock to Escape
-----------------------

 1. Go to the Apple menu > *System Preferences* > *Keyboard*.
 2. Click *Modifier Keys*.
 3. Set *Caps Lock Key* to *Escape*.
 4. Click *OK*.


Speed Up Key Repeat
-------------------

 1. Go to the Apple menu > *System Preferences* > *Keyboard*.
 2. Drag *Key Repeat* slider to *Fast*.
 3. Drag *Delay Until Repeat* slider to one mark before *Short*.


Configure Finder
----------------

 1. Go to *Finder* > *Preferences* > *Sidebar*.
 2. Under *Favorites*, select only the following items:
      - Desktop
      - Documents
      - Downloads
      - Pictures
      - Home directory
 3. Under *Shared* and *Devices*, select all items.
 4. Under *Tags*, deselect *Recent Tags*.
 5. Go to *Finder* > *Preferences* > *Advanced*.
 6. Select *Show all filename extensions*.
 7. From the menu, select *View* > *Show Path Bar*.
 8. From the menu, select *View* > *Show Status Bar*.
 9. From the menu, select *View* > *Customize Toolbar* and drag the
    *Path* item into the toolbar next to the *Back/Forward* buttons.


Configure Terminal
------------------

 1. Go to *Terminal* > *Preferences* > *Profiles*.
 2. Select *Pro*, click the Action drop-down menu (gear icon), then
    select *Duplicate Profile*.
 3. Name the new profile `Pro++`.
 4. Select the new profile.
 5. Click *Default*.
 6. Go to *Text* tab.
 7. In *Background* > *Color & Effects* section, click on the color
    selection box.
      - Set *Opacity* to `90%`.
      - Select *Inactive Window*. Set *Opacity* under it to `70%`.
 8. In *Font* section, click *Change*.
      - Set *Family* to *Menlo*.
      - Set *Size* to *12*.
      - Set *Character Spacing* to *1.004*.
 9. In the *Text* section, click *Text* colour and select *Magnesium* pencil.
10. Go to *Shell* tab.
11. Set *When the shell exits* to *Close if the shell exited cleanly*.
12. Go to *Keyboard* tab and select *Use Option as Meta key*.
13. Close *Profiles* dialog box.
14. From the menu, click *View* > *Hide Tab Bar*.
15. From the menu, click *View* > *Hide Marks*.

Note: If we do not select *Use Option as Meta key*, then many Bash or
tmux key-bindings using the meta-key do not work. For example, this
setting is necessary to ensure that `M-f` and `M-b` move the cursor back
to the previous word and end of the next word, respectively, in Bash.
Similarly, this setting ensures that `C-b M-1` arranges tmux pane in
even horizontal manner.


Configure Displays
-------------------

 1. Go to the Apple menu > *System Preferences* > *Displays*.
 2. Set *Resolution* to *Scaled* and set one larger than *Default*
 3. Ensure *True Tone* is selected.
 4. Click on *Night Shift*
      - Set schedule *Custom*.
      - Select time *From 7:00 PM to 6:59 AM*.
      - Select *Manual - Turn On Until Tomorrow*.


Configure Dock
--------------

 1. Go to the Apple menu > *System Preferences* > *Dock & Menu Bar*.
 2. Drag *Size* slider closer to *Small* such that its distance from
    *Small* is about 1/4th the distance between *Small* and *Large*.
 3. Select *Minimize windows into application icon*.
 4. Unselect *Show recent applications in Dock*.
 5. Keep only necessary applications in *Dock* and remove others:
    Finder, Launchpad, System Preferences, and Terminal.
 6. Launch Finder, and drag and drop home directory to Dock.
 7. In the Dock, double tap home directory, select *Folder*.
 8. In the Dock, double tap home directory, select *Fan*.
 9. Remove Downloads from Dock.


Enable Sound Icon
-----------------

 1. Go to the Apple menu > *System Preferences* > *Sound*.
 2. Select *Show Sound in menu bar - always*.


Enable Bluetooth Icon
---------------------

 1. Go to the Apple menu > *System Preferences* > *Bluetooth*.
 2. Select *Show Bluetooth in menu bar*.


Disable Scroll Bar When Not Scrolling
-------------------------------------

 1. Go to the Apple menu > *System Preferences* > *General*.
 2. Set *Show scroll bars* to *When scrolling*.

### Notes

By default, the *Show scroll bars* option is set to *Automatically based
on mouse or trackpad*. This causes a scroll bar to appear in windows
whenever the mouse is connected. For example, if *Terminal* is resized
to the full width of the desktop and then the mouse is connected, the
scroll bar appearing on the right side causes the width of the
*Terminal* window to reduce a little. Now if the mouse is disconnected,
the *Terminal* window no longer spans the whole width of the desktop.
These problems are avoided by changing this setting such that scroll
bars appear only when scrolling.


Congfigure Battery 
------------------

 1. Go to the Apple menu > *System Preferences* > *Battery*.
 2. Under *Battery*, set *Turn display off after* to *15 min*.
 3. Under *Power Adapter*, set *Turn display off after* to *15 min*.


Configure Computer Name
-----------------------

 1. Go to the Apple menu > *System Preferences* > *Sharing*.
 2. Set *Computer Name* to a desired value, say, `MacBook`. The *Local
    Hostname* is then automatically derived from the computer name by
    adding *.local* and replacing spaces with hyphens.

### Notes
By default, the system names were set as follows:

      - Computer Name: Sunaina’s MacBook Pro
      - Local Hostname: Sunainas-MacBook-Pro.local

On setting the computer name to `MacBook`, the local hostname was
automatically set to `MacBook.local`. These system settings could be
confirmed with the following commands:

    $ scutil --get ComputerName
    MacBook 
    $ scutil --get LocalHostName
    MacBook 
    $ scutil --get HostName
    HostName: not set
    $ hostname
    Macbook.local

The Bash prompt displays the hostname upto the first dot by default.


Install Packages
----------------

 1. Go to https://brew.sh/ and follow the instructions there to install
    Homebrew.

 2. Install useful packages.

        brew install macvim tmux tree wget

 3. Install web browsers, graphics software, etc.

        brew install --cask firefox google-chrome darktable


Set Up Home Directory
---------------------

 1. Enter the following commands.

        mkdir -p ~/github
        cd ~/github

        git clone https://github.com/sunainapai/dotfiles.git
        cd dotfiles
        touch ~/.zshrc
        ./setup


Configure Default Web Browser
-----------------------------

 1. Go to the Apple menu > *System Preferences* > *General*.
 2. Set *Default web browser* to *Firefox.app*.


Next Steps
----------

Perform any applicable setups mentioned in
[common-setup.md](common-setup.md).
