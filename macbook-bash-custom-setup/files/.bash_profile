###Customize Git###
#Show current git branch on terminal prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[34m\]\$(parse_git_branch)\[\033[00m\] $ "

#Tab complete branch names
if [ -f ~/.custom_bash_scripts/git-completion.bash ]; then
  . ~/.custom_bash_scripts/git-completion.bash
fi

#Bash Aliases
alias li='ls -lh' #Display files in directory as a list w/ human readable filesizes
alias la='ls -alh' #li + hidden files
alias lr='ls -lhR' #li recursively
alias lar='ls -lhaR' #All of the above
alias pip='pip2' #Remove this line if only python 2 was installed.

#Linux-style text decoration
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#Additional functionality aliases
alias gitall='~/.custom_bash_scripts/getallbranches.sh'

#Time of last source (helps debugging)
export last_profile_source=$(date)

#Any extra aliases/commands/etc that are peculiar to a user go in this file
source ~/.secondary_profile.sh