# VyronLee's Vimrc

## Introduction

This is my personal vimrc. Different from ordinary configration(all put into
one file named ".vimrc"), it's seperated into many "modules". The mainly two
modules are "configs" and "vundles", all of the "configration" files are placed
in "configs" folder, and all of the "bundles" files are placed in "vundles"
folder. Let's see the directories structure:

|- .vim  
|　|- bundle  
|　|　|- Vundle.vim  
|　|　|- ...  
|　|- configs  
|　|　|- ack.vim  
|　|　|- ctags.vim  
|　|　|- ...  
|　|- vundles  
|　|　|- autocomplete.vundle  
|　|　|- general.vundle  
|　|　|- ...  

You can simply add your bundle group just by adding a new folder in the
"vundles". Change or add your new configration file in the "configs". Every new
vim plugin will install into "bundle" folder after command "BundleInstall" run inside the vim.

The general configrations are copied-and-pasted from
[spf13-vim](https://github.com/spf13/spf13-vim), I just do some modification.
Thanks for that.

## Screencast
![screencast1.png](http://ww3.sinaimg.cn/large/006tNbRwgw1f5hw0kuuacj31kw0zktog.jpg)

## Installation

You can install this via the command-line with either curl or wget.

via curl

``` shell
curl -fsSL https://raw.githubusercontent.com/VyronLee/vimrc/master/bootstrap | sh

```
via wget

``` shell
wget https://raw.githubusercontent.com/VyronLee/vimrc/master/bootstrap -O - | sh
```
or you can install it as part of my [dotfiles](https://github.com/VyronLee/dotfiles) project.

## License

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE, Version 2, December 2004
