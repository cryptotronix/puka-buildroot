#!/bin/bash

# print the usage of this script
print_usage() {
  printf "\nUsage: set_puka_path.sh PUKA_PATH SED_TRAINING_PATH\n"
  printf "\nSets the path to your puka directory for use with buildroot.\n\n"
  echo -e "Example:\n"
  echo -e "./set_puka_path.sh /opt/puka /opt/sed_training_buildroot\n"
}

# usage captures

if [ "$1" = "-h" ] || [ "$1" = "--help" ] || [ "$1" = "help" ]; then
	print_usage
	exit 0
fi
if [ $# -ne 2 ]; then
	print_usage
	exit 1
fi

pukadir=`realpath $1`
seddir=`realpath $2`

# input verification
if [ ! -d $pukadir ]; then
	>&2 echo "error: $pukadir does not exist"
	exit 1
fi

if [ ! -d $seddir ]; then
	>&2 echo "error: $seddir does not exist"
	exit 1
else
	if [ ! -d $seddir/package/puka-engine ]; then
		>&2 echo "error: puka-engine package not found, did you provide the correct path to sed_training_buildroot?"
		exit 1
	fi
fi

#execution
echo "PUKA_ENGINE_OVERRIDE_SRCDIR=$pukadir" > $seddir/package/puka-engine/local.mk
echo -e "\ndone!"
