NOTE this subdir used to be standalone, now archived: https://github.com/tomsercu/dotvim

Setting up vim config
=====================
Assuming base dir is `~/dotfiles/`

Create symlinks:

    ln -s ~/dotfiles/.vim ~/.vim
    ln -s ~/dotfiles/.vim/vimrc ~/.vimrc

see also ~/dotfiles/links

This won't work cause not submodules anymore:

    cd ~/.vim
    git submodule init
    git submodule update

Instead I'll manually update the contents of `~/bundle/` every once in a while - ie when something is broken

My notes
========
###Git and pathogen synchronization
Based on http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/ 
Intro to pathogen: http://addisu.taddese.com/blog/using-github-and-pathogen-for-your-vim-config-files/

### Inspiration for my configuration
http://stevelosh.com/blog/2010/09/coming-home-to-vim/#bundles-i-use
maybe later: https://github.com/carlhuda/janus
And of course spf13
Also http://stackoverflow.com/questions/357785/what-is-the-recommended-way-to-use-vim-folding-for-python-code

Plugins
=======
+ fugitive (git support)
+ easymotion

The vimrc
========
First part comes from $VIMRUNTIME/vimrc\_example.vim
Second part comes from steve losh



