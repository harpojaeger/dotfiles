#! /bin/sh

find /home/harpo/dotfiles -not \( -path /home/harpo/dotfiles/.git -prune \) -name .\* -print0 | xargs -0 -I {} bash -c 'ln -s $0 ~/${0##*/} && echo "created symlink to $0"' "{}"
