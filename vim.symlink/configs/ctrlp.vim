let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
let g:ctrlp_user_command = {
            \ 'types': {
            \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': s:ctrlp_fallback
            \ }
let g:ctrlp_extensions = ['funky']

noremap <C-p><C-l> :CtrlPLine<cr>
noremap <C-p><C-c> :CtrlPChange <C-r>=expand("%:p")<cr><cr>
noremap <C-p><C-u> :CtrlPUndo<cr>
noremap <C-p><C-b> :CtrlPBuffer<cr>
noremap <C-p><C-p> :CtrlP <C-r>=expand("%:p:h")<cr><cr>
noremap <C-p><C-r> :CtrlPMRU<cr>
noremap <C-p><C-w> :CtrlPClearCache<cr>
noremap <C-p>b :CtrlPBookmarkDir<cr>
nnoremap <Leader>fu :CtrlPFunky<Cr>
