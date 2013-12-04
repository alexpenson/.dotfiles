# Dotfiles
various setup dot-files to optimize (stupid word!) your bash environment---vim, git, screen, etc.

to get this repository, go into $HOME:
```
cd
```
and clone it:
```
git clone https://github.com/gitliver/.dotfiles.git
```
it will create an invisible directory: .dotfiles/
containing a bunch of dotfiles

To make them active, link to them from your $HOME as follows:

```
cd
ln -s .dotfiles/.bash_profile 
ln -s .dotfiles/.screenrc
ln -s .dotfiles/.vimrc 
ln -s .dotfiles/.gitconfig 
```

also, to make sure the unix utility "screen" works, make sure .bashrc sources .bash_profile like such:
```
cat ~/.bashrc
source ~/.bash_profile
```

It's useful (but not necessary) to use this script in combination with another repository: 
```
git clone https://github.com/gitliver/.bash_prefs.git
```

The reason is that the file .dotfiles/.bash_profile sources some additional files in that repo.


