#!/bin/bash

# Version 0.1

if [ "$1" == "--help" ] || [ "$1" == "-h" ]
then
  echo -e "install.sh [-h] [-r]
Install the Dicode script on the system

USAGE:
\t-h --help\t\tDisplay this message
\t-r --remove\t\tRemove the program from the system"
  exit
fi

if [ "$1" == "--remove" ] || [ "$1" == "-r" ]
then
  echo "Removing Dicode..."
  rm -rf /usr/local/bin/dicode
  echo "Dicode removed!"
  exit
fi

echo "Installing Dicode..."
cp -f dicode /usr/local/bin/dicode

echo "Dicode installed!"
echo "To use it, just call the 'dicode' command"
echo "usage: dicode [-h] [error]"