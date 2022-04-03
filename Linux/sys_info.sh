#!/bin/bash

if [ $UID -ne 0 ]
then
  echo "Please run this script with SUDO."
  exit
fi


# Var to hold output path
output=$HOME/research_output/sys_info.txt

# Create directory for output mkdir ~research 2> /dev/null
#mkdir ~/research_output 2> /dev/null

# check if output directory exits create if missing
if [ ! -d $HOME/research_output ]
then
mkdir $HOME/research_output
fi

# check if file exists , delete if it's not there
if [ ! -f $HOME/research_ouput/sys_info.txt ]
then
rm $HOME/research_output/sys_info.txt
else
# do nothing because the file doen not exist


echo "A Quick System Audit Script" >> ~/research_output/sys_info.txt
echo "---------------------------" >> ~/research_output/sys_info.txt
date >> ~/research_output/sys_info.txt
echo "Machine Type Info:" >> ~/research_output/sys_info.txt
echo $MACHTYPE >> ~/research_output/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research_output/sys_info.txt
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> ~/research_output/sys_info.txt
ip=(ip addr |head -9 | tail -1)
echo -e "IP Info: $ip \n" >> $output

echo "Hostname: $(hostname -s)" >> ~/research_output/sys_info.txt
echo "DNS Servers: " >> ~/research_output/sys_info.txt
cat /etc/resolv.conf >> ~/research_output/sys_info.txt
echo "=================================================" >> ~/research_output/sys_info.txt
echo "Memory Info:" >> ~/research_output/sys_info.txt
free >> ~/research_output/sys_info.txt
echo -e "\nCPU Info:" >> ~/research_output/sys_info.txt
lscpu | grep CPU >> ~/research_output/sys_info.txt
echo -e "\nWho is logged in: \n $(who -a) \n" >> ~/research_output/sys_info.txt
echo -e "\n777 Files:" >> ~/research_output/sys_info.txt
df -H | head -2 >> ~.research_output/sys_info.txt
find / -type f -perm 777 >> ~/research_output/sys_info.txt
echo -e "\nTop 10 Processes" >> ~/research_output/sys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research_output/sys_info.txt

echo -e "\nExec Files:" >> ~/research_output/sys_info.txt
executables=$(find /home -type f -perm 777)
echo $executables >> $output
