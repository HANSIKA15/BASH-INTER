echo $PS1
echo $SECONDS #:- is a special built-in shell variable in bash that:Automatically starts counting from 0 when a shell session begins.

fc -l 1800 > lastcommands
#meaning:-fc: Shows or edits command history.
#-l 1800: Lists history starting from command number 1800.
#> lastcommands: Saves the output to a file named lastcommands.

#example for key binding:-
bind '"\c-t":"curiouser and curiouser!"'
bind -p

# Bind Ctrl+L to run `ls` command
bind -x '"\C-l":ls'

# Unbind Ctrl+L (remove the binding)
bind -r "\C-l"

 #File Overwrite Protection with Shell Options (noclobber)
# Create test file
echo "This is my file." > myfile.txt
# This will overwrite the file silently
echo "This is my new file." > myfile.txt
# Enable noclobber (turn ON the option)
set -o noclobber
# Try to overwrite again
echo "This will not overwrite" > myfile.txt
# Duplicate of set -o
shopt -o #Lists current shell options. Equivalent to set -o.

#Shell Variables
VAR=value
VAR="ATGCTTGGCC"
echo "$VAR"
unset VAR
#Double vs. Single Quotes
  double quote :- echo "$var"
  single quote:- echo '$var' 

# Define species and sample for bioinformatics project
SPECIES="Homo_sapiens"
SAMPLE="RNAseq_run_42"

#Example: Bioinformatics Project Setup & History Control
# Define species and sample for bioinformatics project
SPECIES="Homo_sapiens"
SAMPLE="RNAseq_run_42"

# Configure history behavior for reproducibility
HISTFILE=~/project_logs/human_rnaseq_history.txt  # Custom history file
HISTFILESIZE=500   # Max history file lines
HISTSIZE=300       # Session command history size
HISTCONTROL=ignoredups  # Avoid duplicate commands
HISTIGNORE="cd *:clear:exit"  # Ignore common/boring commands
HISTTIMEFORMAT="%F %T "  # Timestamp commands: YYYY-MM-DD HH:MM:SS
# Simulated computational work
mkdir "$SPECIES"
cd "$SPECIES"

# Simulate creation of a results file after alignment
touch "${SAMPLE}_hisat2_alignment.bam"

# List the contents to verify
ls

#to view the command history
history

# To get username
PS1="\u-> "

# To get username and history number
PS1="\u \!-> "
#to get out this use :-
exec bash

#hash is a shell builtin that caches the locations of commands you've executed. It speeds up command lookup.
# Run a command to cache it
ls

# View all cached commands
hash

# See path of a command
hash -t ls

# Remove one command from the cache
hash -d ls

# Reset all cached commands
hash -r
echo 
#for automatic setting:-
set -o hashall   # default in interactive shells
#examples for variable:-
echo $HOME
echo $seconds
sleep 3

# Examples for cd
CDPATH=.:~/home/guest/
cd Downloads
# To use variable
shopt -s cdable_vars  # enable
video=/home/user/Videos
cd video    # Will cd into $video
video=/home/Desktop/Downloads/bash/video
cd video

# Set and export environment variable
gene_dataset=ATTGGGGCCCCTA      # Create a shell variable 'hello' with value 'hi'
export gene_dataset   # Mke 'hello' available to child processes

export gene_dataset=ATTGGGGCCCCTA   # Combine setting and exporting in one step

# Display terminal size
echo $COLUMNS  # Shows number of columns in terminal (width)
echo $LINES    # Shows number of lines in terminal (height)

# Display shell info
echo $SHELL    # Path of default shell (e.g. /bin/bash)
echo $BASH     # Path of current Bash binary
