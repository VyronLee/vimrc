" From https://github.com/vheon/home/blob/ea91f443b33bc15d0deaa34e172a0317db63a53d/.vim/vimrc#L330-L348
" When switching colorscheme in terminal vim change the profile in iTerm as well.
if !has('gui_running')
    function! s:change_iterm2_profile(name)
        let escape = '\033]50;SetProfile='.a:name.'\x7'
        if exists('$TMUX')
            let escape = '\033Ptmux;'.substitute(escape, '\\033', '\\033\\033', 'g').'\033\\'
        endif
        silent call system("printf '".escape."' > /dev/tty")
    endfunction

    function! s:change_iterm2_profile_depend_on_vim_colorscheme()
        let dual_colorschemes = ["solarized"]
        if exists('g:colors_name')
            let profile = g:colors_name
            if index(dual_colorschemes, g:colors_name) >= 0
                let profile .= '_'.&background
            endif
            silent call s:change_iterm2_profile(profile)
        endif
    endfunction

    autocmd VimEnter,ColorScheme * call s:change_iterm2_profile_depend_on_vim_colorscheme()
    autocmd VimLeave,ColorScheme * call s:change_iterm2_profile("Default")
endif
