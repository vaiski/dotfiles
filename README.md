# Dotfiles

This repo is intended to be used as a bare repository in the home
directory as described in [this blog
post](https://www.atlassian.com/git/tutorials/dotfiles) and [this
Hacker News thread](https://news.ycombinator.com/item?id=11071754).

## Installing onto a new system

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

```
echo ".cfg" >> .gitignore
```

```
git clone --bare <git-repo-url> $HOME/.cfg
```

```
config checkout
```

```
config config --local status.showUntrackedFiles no
```
