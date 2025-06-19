#Commands to run :-
🔹 Commands to check which shell you're using (echo $SHELL)
echo $bash_VERSION
🔹 Commands to run bash (bash)
🔹 Command to exit or end (exit o/r logout o/r press CTRL-D)
🔹 Commands to locate bash (which bash o/r whereis bash o/r whence bash o/r grep bash /etc/passwd | awk -F: '{print $7}' | sort -u)
🔹 Command to change your login shell (chsh /path/to/bash)
# basic command structure:-
ls :- list the contents of current directory
ls -a:- to list all files and directories, including hidden files.
pwd :- current working directory
cd :- change directory 

#basic braces:-
echo {a,d,c}.txt
echo b{0}lt

#concatenate:-
cat :- versatile utility primarily used for displaying the contents of files.
ctrl+D

#to save a date in the folder:- 
date > now
ls
ls -l | more

#
echo Test > test.txt
echo More >> text.txt
cat text.txt | grep Test

#job control command:-
sleep 10 &
jobs
fg %1

To get a sorted listing of all users on the system:- $ cut -d: -f1 < /etc/passwd | sort
$ cut [etc]passwd /d=":" /f=1 /out=temp1
$ sort temp1 /out=temp2
$ print temp2
$ delete temp1 temp2

Quoting in UNIX Shell:
echo 2 * 3 > 5 is a valid inequality.
echo '2 * 3 > 5 is a valid inequality'.


Quoting Quotation Marks:
echo \"2 \* 3 \> 5\" is a valid inequality.

help cd | more.
