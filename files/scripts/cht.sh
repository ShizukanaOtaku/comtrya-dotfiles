#!/bin/zsh
printf "\033[0;32mWhat do you want to find?\033[0m\n> "
read subject
subject=$(echo $subject | tr ' ' '/')

result=$(curl -s cht.sh/$subject)

if [[ "$result" = *"<title>500 Internal Server Error</title>"* ]]; then
  printf "\033[0;91mSorry, nothing was found.\033[0m\n" | less -R
  exit
else
  printf "%s\n" "$result" | less -R
fi
