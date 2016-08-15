export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Source bashrc if it is present
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Add colors to command line
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

##
# Your previous /Users/thomas/.bash_profile file was backed up as /Users/thomas/.bash_profile.macports-saved_2014-10-20_at_11:03:14
##

# MacPorts Installer addition on 2014-10-20_at_11:03:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Execute the script for git tab completion if it exists
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Ensure that we add our private key to ssh-agent on boot
ssh-add -L &> /dev/null
if [ $? -eq 1 ]; then
ssh-add
fi
