" Let <Tab> also do completion
inoremap <silent><expr><tab>
    \ pumvisible() ? "\<C-n>" : "\<tab>"


inoremap <silent><expr><CR>
    \ pumvisible() ? "\<right>" : "\<CR>"
