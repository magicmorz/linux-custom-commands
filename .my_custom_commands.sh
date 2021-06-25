#!/bin/bash
# prints the input
function bandit() {
  # find number of known passwords
  numOfLines=$(wc -l passwords.txt | awk '{ print $1 }')
  # read requested level from user
  read -p 'level: ' level
  # check if level makes sense
  if [ $level -gt $numOfLines ]
  then
    echo level invalid
  fi

  prefix="lvl ${level} "
  password=$(grep 'lvl '$level passwords.txt)

  #create clear output of password
  plainPassword=$(echo "$password" | sed -e "s/^$prefix//")

  banditUsername="bandit${level}"

  sshpass -p $plainPassword ssh -o StrictHostKeyChecking=no $banditUsername@bandit.labs.overthewire.org -p 2220

}
