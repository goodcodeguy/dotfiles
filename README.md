# Sharktank

These are my dotfiles, based loosely on Oh-MyFish.  If you wish to use them use the instructions below:

## Installation

Super simple installation right now since there isn't a whole lot to deal with.

    $ git clone https://github.com/goodcodeguy/dotfiles.git ~/.sharktank
    $ cd ~/.sharktank
    $ script/bootstrap

## TODOS

- Organize the scripts into categories instead of seperating them by function
  - Instead of "/load", "/completions", "/functions" do "/environ/git", "/environ/sublime", "/environ/ruby", "/environ/vim"
- Add .symlink support
- Change script/bootstrap to a bash script and include installation of fish
  - Make sure support for Red Hat, Ubuntu and OS X (for now)
- Add my vim settings and plugins to the vim environment
