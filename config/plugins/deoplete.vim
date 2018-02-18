" enable deoplete at startup
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" automatically closing the scratch window at the top of the
" vim window on finishing a complete or leaving insert
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" Let <Tab> also do completion
inoremap <silent><expr><tab>
    \ pumvisible() ? "\<C-n>" : "\<tab>"


inoremap <silent><expr><CR>
    \ pumvisible() ? "\<right>" : "\<CR>"

" add snippets to autocompletion
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
