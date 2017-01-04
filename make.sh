#!/bin/bash

#######################################################################
#                           Dotfiles                                  #
# This script creates symlinks from the home directory to any desired #
# dotfiles in ~/dotfiles                                              #
#######################################################################

###############################
#          Variables          #
###############################

dir=${HOME}/dotfiles                    # dotfiles directory
olddir=${HOME}/dotfiles_old             # old dotfiles backup directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )  # Get current directory of script
files="$(ls $DIR)"                # list of files/folders to symlink in homedir


###############################
#            Logic            #
###############################

# Make sure the directory's name is dotfiles... otherwise the user could be
# getting more than he or she bargained for
if [ "$( cd ${DIR} && echo ${PWD##*/} )" != "dotfiles" ]
then
  echo "The folder you ran this script from isn't named 'dotfiles'... so the script \nhas been blocked from to prevent you from accidentally creating a bunch of symlinks you don't actually want"
  echo "Symlinks that would have been made:  ${files}"
  exit 1
fi

# create dotfiles_old in homedir
echo "Creating ${olddir} for backup of any existing dotfiles in ~"
mkdir -p ${olddir}/complex
echo "...done"

# change to the dotfiles directory
echo "Changing to the ${dir} directory"
cd ${dir}
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do

  # skip the README.md and make.sh file #
  if [ "$file" = "README.md" ] || [ "$file" = "make.sh" ] || [ "$file" = "fresh_install_script" ] || [ "$file" = "sample_this_machine" ] || [ "$file" = "complex" ]
  then
    echo "skipping $file"
    continue      # Skip rest of this particular loop iteration.
  fi


  echo "Moving any existing dotfiles from ~ to $olddir"
  [ -e ${HOME}/.${file} ] && mv ${HOME}/.${file} ${HOME}/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ${HOME}/.$file
done

# Complex Phase
#
#   The primary configuration file for Atom is `~/.atom/config.cson`
# We don't want to version control anything else, and we don't want anything in
# that folder removed when we run `~/.make.sh`  other than a few specific 
# config files.  So we can drop the config files in `~/dotfiles/complex/atom/` 
# to have them directly installed into the proper place...

# change to the dotfiles directory
echo "Changing to the $dir/complex directory"
cd ${dir}/complex
echo "...done"

folders="$(ls ${PWD})"
for folder in $folders; do
  echo "folder name: ${folder}"

  # Making backup of entire directory was to heavy...
  #echo "Making a copy of existing config folders at ~/ to ${olddir}/complex"
  #cp -R ~/.${folder} ${olddir}/complex/${folder}

  # cd into the folder
  cd $folder
  complex_files="$(ls ${PWD})"
  for file in ${complex_files}; do
    echo "Making backup of ${file} in ${olddir}/complex/${folder}/${file}"
    [ -e ${HOME}/.${folder}/${file} ] && mv ${HOME}/.${folder}/${file} ${olddir}/complex/${folder}/${file}

    echo "Creating symlink to ~/.${folder}/${file}"
    [ -e ${HOME}/.${folder}/ ] && ln -s ${PWD}/${file} ${HOME}/.${folder}/${file}
  done

done

exit
