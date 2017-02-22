let g:acp_enableAtStartup = 0
let g:ycm_collect_identifiers_from_tags_files = 1

" Disable the neosnippet preview candidate window
" When enabled, there can be too much visual noise
" especially when splits are used.
set completeopt-=preview

nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gi :YcmCompleter GoToImplementationElseDeclaration<CR>
nnoremap <C-y> :YcmCompleter
