" Let <Tab> also do completion
" inoremap <silent><expr><tab>
    " \ pumvisible() ? "\<C-n>" : "\<tab>"


" inoremap <silent><expr><CR>
    " \ pumvisible() ? "\<right>" : "\<CR>"

imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
