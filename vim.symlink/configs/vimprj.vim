function! <SID>SetMainDefaults()
    " your default options goes here!
endfunction

call <SID>SetMainDefaults()

" initialize vimprj plugin
call vimprj#init()

" define a hook
function! g:vimprj#dHooks['SetDefaultOptions']['main_options'](dParams)
    call <SID>SetMainDefaults()
endfunction
