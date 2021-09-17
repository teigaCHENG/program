# !bin/bash
#
# remove current github folder ~/program
if [ -d ~/program ]
   then
       rm -rf program
#
# clone the program folder from github server
       git clone git@github.com:teigaCHENG/program.git
#
#
# choose the file to upload to github seriver
# echo "input new file to upload:"
# read $1
       cp $1 program
       cd program
       git status
#
# add new file to upload
       git add $1
       git commit -m "$2" $1
       git push
fi
