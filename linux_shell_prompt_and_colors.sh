# Project of the day

# TODO:
# Write a table of PS1 Shell Prompt codes/legend

# Write a table of colors for shell prompt codes
#### https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-bash-ps1-prompt

# Write a table of ASCII symbols
#### https://www.w3schools.com/charsets/ref_emoji.asp

# Create few flavor of colorized shell prompts (Pimp My Prompt)

#####################
# Colorizing the shell prompt in ZSH
#
# Put this in ~/.zshrc:
# Example:
# autoload -U colors && colors
#
# Set PS1 (The shell prompt) with the colors and functions to display
# Example 1
# PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
#
# Example 2
# PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}%% "
#

###################
# Explaining PS1 shell prompts, parameters, and colors

# The shell prompt will print whatever is set in the PS1 variable in linear order
# If we set the variable as PS1="one two tree four five", the shell prompt will literally print
# You will see a prompt that look like this:
# one two tree four five
#
# What is typically set up in the PS1 (shell prompt variable) is a set of parameters to display the current user logged,
# the hostname or machine name, the working directory where the shell is working or located at,
# followed by a prompt symbol $ or #
#
# All these combinations is what is tipically seen in default shell prompts 
#
# We can change the parameters to define or customized what we want to see in the shell prompt
#
# Let's start by describing what perameters can be passed to PS1 variable to define the shell prompt as we want 
#
# Reference: https://linux.die.net/man/1/zshmisc
#
# The prompt can be construct as a set of functions and/or characters we want to display in the prompt itselt
# It could be any ASCII character and/or a set of parameters to display specific functions based on pre-defined options
# They can be represented as follows:
# %n @ %m %1~    %#
# {User Name}@{Host Name}{Current Directory} %
#
# Function - descriptions of what they do
# The % symbol takes the next character as an instruction to display something in the prompt
# %n - prints user
# %m - prints machine name (short hostname)
# %M - prints machine name (hostname or FQDN)
# %c - prints current working directory
# %~ - prints the current working directory relative to home directory
# %d - prints entire absolute path of the current working directory
# %y - The line (tty) the user is logged in on
# %x - The name of the file containing the source code currently being executed
# %D - Date
# %T - Time in 24-hour format
# %t - Time in 12-hour, am/pm format
# %@ - in 12-hour, am/pm format
# %* - Time and seconds in 24-hour format, with seconds
# %w - Date in day-dd
# %W - Date in mm/dd/yy format
# %K - Grey line
#
#
##################
# Visual Effects
#
# %B - print whatever comes next in bold
# %b - stop printing whatever comes next in bold 
# %E - Add a whitespace at the beginning of the prompt 
# %U - Undeline the characters we type
# %S - Add gray foreground to whatever we type (Highlighted)
# %F{color} - Change foreground color by name 
# %F{magenta}%f - Change foreground color to magenta
# %F{color}%f - Change foreground color by name. The %f symbol will tell the shell to stop coloring before the %f. Otherwise it will colorize until the end of the prompt.
# %FG{color} - Change foreground color by color code - www.tweaking4all.com/software/macosx-software/xterm-color-cheat-sheet
# %K{color} - Change background color
# ${FG[226]} - Change color, to 226 (yellow)
# % - 
# % - 
# % - 

# This variable is to display ASCII in the right side of the prompt
RPROMPT="%F{241}%T%f"


#####################
# Explaining how to set colors for the functions to be display
# 
# Simply put the color function before the next value to be printed
#
# The next line represent the color yellow (226).
# Check the following color chart for more reference: https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-bash-ps1-prompt 
# ${FG[226]}
#
# Example
# 
# PS1="${FG[226]} --->
# This will print the ---> in the shell prompt colored as yellow


#######################################
# Defining colors variables for BASH
#
# BASH prompt colors for BASH with GIT propmt
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"
green_mint="\[\033[01;32m\]"

# Enable tab completion for GIT prompt
source ~/.git-completion/git-completion.bash

# Change command prompt for GIT
source ~/.git-completion/git-prompt.sh

# BASH colors

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset


export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u $green\ $(__git_ps1) $blue \W
$ $reset"

# MyPrompt
PS1="$bldylw➜ $txtgrn\u $bldblu\h $red\ $(__git_ps1) $bldylw\W
$ $reset"



#############


# Another colorful BASH prompt
.bash_profile
if [ "$USER" = "plasmarob" ]; then
    p="\[\033[01;38;5;52m\]p"
    l="\[\033[01;38;5;124m\]l"
    a="\[\033[01;38;5;196m\]a"
    s="\[\033[01;38;5;202m\]s"
    m="\[\033[01;38;5;208m\]m"
    a2="\[\033[01;38;5;214m\]a"
    r="\[\033[01;38;5;220m\]r"
    o="\[\033[01;38;5;226m\]o"
    b="\[\033[01;38;5;228m\]b"
    __user_and_host="$p$l$a$s$m$a2$r$o$b"
else
    __user_and_host="\[\033[01;36m\]\u"
fi

export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "



# Function to create and print a color grid
function colorgrid( )
{
    iter=16
    while [ $iter -lt 52 ]
    do
        second=$[$iter+36]
        third=$[$second+36]
        four=$[$third+36]
        five=$[$four+36]
        six=$[$five+36]
        seven=$[$six+36]
        if [ $seven -gt 250 ];then seven=$[$seven-251]; fi

        echo -en "\033[38;5;$(echo $iter)m█ "
        printf "%03d" $iter
        echo -en "   \033[38;5;$(echo $second)m█ "
        printf "%03d" $second
        echo -en "   \033[38;5;$(echo $third)m█ "
        printf "%03d" $third
        echo -en "   \033[38;5;$(echo $four)m█ "
        printf "%03d" $four
        echo -en "   \033[38;5;$(echo $five)m█ "
        printf "%03d" $five
        echo -en "   \033[38;5;$(echo $six)m█ "
        printf "%03d" $six
        echo -en "   \033[38;5;$(echo $seven)m█ "
        printf "%03d" $seven

        iter=$[$iter+1]
        printf '\r\n'
    done
}

colorgrid()


# Another way to print a GRID of colors supported by 256 color GUI terminal
#!/bin/bash

echo $TERM

color=1;

while [ $color -lt 256 ]; do
    echo -e "$color: \\033[38;5;${color}mThis is super cool \\033[48;5;${color}mand this is awesome\\033[0m"
    ((color++));
done  





#########################################################################

# fino-custom prompt
PS1="${FG[226]}➜ ${FG[040]}%n ${FG[239]}at ${FG[033]}$(box_name) ${FG[239]}in %B${FG[226]}%c
 ○ "


 # Code
 # fino-custom.zsh-theme

# Use with a dark background and 256-color terminal!
# Meant for people with rbenv and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

# Further customized by
#  Daniel Cruz
function virtualenv_prompt_info {
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

function prompt_char {
  command git branch &>/dev/null && echo "±" || echo '○'
}

function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

#local ruby_env='$(ruby_prompt_info)'
git_info='$(git_prompt_info)'
virtualenv_info='$(virtualenv_prompt_info)'
prompt_char='$(prompt_char)'

# My custom prompt 1 - Example: ➜ MyUser at MyHost in CurrentDir on main ✔
PS1="${FG[226]}➜ ${FG[040]}%n ${FG[239]}at ${FG[033]}$(box_name) ${FG[239]}in %B${FG[226]}%c${git_info} ${ruby_env}${virtualenv_info}
 ${prompt_char}%{$reset_color%} "

# My custom prompt 2 - Example: ➜ MyUser at MyHost in ~/SomeDir/CurrentDir on main ✔
### PS1="${FG[226]}➜ ${FG[040]}%n ${FG[239]}at ${FG[033]}$(box_name) ${FG[239]}in %B${FG[226]}%~%b${git_info} ${ruby_env}${virtualenv_info}
###  ${prompt_char}%{$reset_color%} "

# My custom prompt 3
### PS1="${FG[226]}💾 ${FG[040]}%n ${FG[239]}at ${FG[033]}$(box_name) ${FG[239]}in %B${FG[226]}%~%b${git_info}${ruby_env}${virtualenv_info}
### ╰─${prompt_char}%{$reset_color%} "



ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[239]}on%{$reset_color%} ${FG[255]}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[202]} ✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]} ✔"

ZSH_THEME_RUBY_PROMPT_PREFIX=" ${FG[239]}using${FG[243]} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[239]}using${FG[243]} «"
ZSH_THEME_VIRTUALENV_SUFFIX="»%{$reset_color%}"