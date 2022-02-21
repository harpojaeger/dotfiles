# Dotfiles
These are my dotfiles; they're just dotfiles.

## init.sh
Symlinks all dotfiles in this directory and its children into ~/. Files here may be organized into subdirectories as deeply as desired for comprehensibility; the directory structure will **not** be preserved when the symlinks are created.

## auto.misc
`autofs` configuration. To use this, install `autofs` and edit `/etc/auto.master` to add a reference to this file (or symlink it somewhere like /etc, though I don't think that's strictly necessary). PARTUID specifies the specific partition on an external drive that should be mounted; use UUID instead for the entire device.
