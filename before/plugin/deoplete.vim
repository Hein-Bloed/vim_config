" enable deoplete at startup
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

let g:deoplete#sources = {}
let g:deoplete#sources._ = []

let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#max_list = 20
let g:deoplete#auto_complete_delay = 0

" find out what this does and then enable or delete it
" set completeopt=longest,menuone,preview

" automatically closing the scratch window at the top of the
" vim window on finishing a complete or leaving insert
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" add snippets to autocompletion
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
