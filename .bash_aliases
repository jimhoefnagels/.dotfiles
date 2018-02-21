# Keep 1000 lines in .bash_history (default is 500)
export HISTSIZE=1000
export HISTFILESIZE=1000

#Stop bash from caching duplicate lines.
HISTCONTROL=ignoredups

# Disk free in human terms
alias df='df -h'

# List paths
alias path='echo -e ${PATH//:/\\n}'

# Upgrade/update system
# alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove'

# Encode wav files to flac and delete the wav file
alias zipwavd='flac -V --best --delete-input-file *.wav'

# Encode wav files to flac and keep the wav file
alias zipwav='flac -V --best *.wav'

# Decode flac files to wav format
alias uzipwav='flac -d -V *.flac'

# Encode wav to ogg
# alias oggem=oggenc -n *.wav -o *.ogg

# Allow local users to use my X session
# xhost +local:

# I can't remember the new gnome command!
alias gtop='/usr/bin/gnome-system-monitor'

# Alter the ls command
alias ll='ls -l --color --time-style="+%b %d %Y %H:%M"'
alias ls='ls -ac'
alias lls='ls -lac'
alias la="ls --color -lAGbh --time-style='+%b %d %Y %H:%M'"

# Set background in Fluxbox
# alias bg='fbsetbg -a /home/phil/Pictures/kells/kelljesusarrest.gif'
# alias bg='fbsetbg -a /home/phil/Pictures/kells/KellsFol114rArrestOfChrist.jpg'
# alias bg='fbsetbg -a /home/phil/Pictures/kells/KellsFol007vMadonnaChild.jpg'
# alias bg='fbsetbg -a /home/phil/Pictures/kells/4evangelists.jpg'

# Become system administrator
alias god='sudo -i'
alias root='sudo -i'

# Because less is more and more is less
# alias more='less'

# perform 'ls' after 'cd' if successful.
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    echo "Change Directory " ${new_directory}
    builtin cd "${new_directory}" && ll
}

# search for a string recursively in any C source files 
alias src-grep='find . -name "*" | xargs grep '

#download song from youtube
alias youtube-dl-song='youtube-dl --extract-audio --audio-format flac --output "%(title)s.%(ext)s"'


