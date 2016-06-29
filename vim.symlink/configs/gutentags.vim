let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
if gitroot != ''
    let g:gutentags_cache_dir = gitroot . '/.git/tags'
endif
