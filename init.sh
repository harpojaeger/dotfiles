#! /bin/sh

find /home/harpo/dotfiles \
`# Exclude files in the .git directory` \
-not \( -path /home/harpo/dotfiles/.git -prune \) \
`# Find files beginning with a dot.` \
-name .\* \
`# Pipe the files into a bash script` \
-print0 | xargs -0 -I {} bash -c '
# Create a symlink for each file in the home directory.
# The snazzy parameter substitution allows the target files to be as deeply
# nested as is convenient, while symlinks are all place directly in ~/.
ln -s $0 ~/${0##*/}
# If the symlinking failed, an explicit error message is echoed. Otherwise, let
# the user (me) know that it succeeded.
if [ $? -eq 0 ]; then
	echo "created symlink to $0"
fi
' "{}"
