# .profile
#
# .profile == read by login shell for bash (systemwide) && dash (=sh)
# .bash_profile  == additionally read by login shell for bash (personal per user)
# .bashrc  == read by NON login shell for bash
# .FILENAME(=.dashrc)  == additionally read by NON login shell for dash. BUT must be declared here with ENV

export PATH=$HOME/bin:$PATH
export MANPAGER=most
export PAGER=most
export EDITOR=micro
export BROWSER=chromium
#export SHELL=/bin/bash
export HISTSIZE=1000
export HISTFILESIZE=1000
export ENV=$HOME/.dashrc
export XDG_CONFIG_HOME="$HOME/.config"
#run devmon daemon to automount usb-sticks to /media

# unmount with "udevil umount /dev/sdX"
#devmon &

# starts the X system on login
# login happens automatic too
#       added "-a void" for "GETTY_ARGS" in /etc/sv/agetty-tty1/c$
# might be overwritten by an system update
#startx
