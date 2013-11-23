#Quicker ls
  alias ll='ls -alF'
  alias la='ls -A'
  alias l='ls -CF'

#Quick cd to home directory
  alias ~="cd ~"

#Rails aliases
  #rails server
    alias ras='rails server'

#git aliases
  alias gpom='git push origin master'
  alias gpoa='git push origin --all'
  alias g='git'

#cd to the dotfiles directory
  alias cddot="cd $(dirname $(ls -l ~/.bashrc | awk '{print $11}'))"

#source bashrc 
  alias sb='source ~/.bashrc'
