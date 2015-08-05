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
  alias gphm='git push heroku master'
  alias gpoa='git push origin --all'
  alias gpo='git push origin'
  alias guo='git pull origin'
  alias g='git'
  alias gcb='git checkout -b'
  alias gnb='git checkout -b' #think git new branch
  alias gcd='git checkout develop'
  alias gcm='git checkout master'
  alias gbd='git branch -d'
  alias gbD='git branch -D'

# rails aliases
  alias raro='rake routes'
  alias rap='rake assets:precompile'
  alias mig='bundle exec rake db:migrate'
  alias miga='bundle exec rake db:migrate ; bundle exec rake db:migrate test'
  alias migsa='bundle exec rake db:migrate:status ; bundle exec rake db:migrate:status test'

# heroku aliases
  alias h='heroku'

# Change directories
  alias cdd="cd ~/Dropbox/dotfiles" # dotfiles directory
  alias cdf="cd ~/Projects/Freelancing/no-smoking/website_code" # current freelancing project
  alias cdp="cd ~/Projects/practice-code/social_news" # current practice site
  alias cdt="cd ~/Projects/typical-rails_setup/" # typical rails setup folder
  alias cdw="cd ~/Work/Roku/PBS-ga-roku" # work folder

#source bashrc 
  alias sb='source ~/.bashrc'
