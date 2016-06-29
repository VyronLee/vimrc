#!/usr/bin/env bash
#
# This installs all vim plugins according to vundle configuration,

install_vim_plugins() {
    env SHELL="/bin/sh" vim -u "$HOME/.vim/vundle.vim" +BundleInstall +BundleClean +qall || {
        echo "Error: install vim plugins failed!"
        exit 1
    }
}

initial_plugins() {
    #compile YouCompleteMe plugin
    pushd ~/.vim/bundle/YouCompleteMe
    python install.py --clang-completer --omnisharp-completer --tern-completer || {
        echo "Error: install youcompleteme failed!"
        exit 1
    }
    popd
}

if test $(which vim); then
    install_vim_plugins
    initial_plugins
else
    echo "Error: vim not found!"
    exit 1
fi

exit 0
