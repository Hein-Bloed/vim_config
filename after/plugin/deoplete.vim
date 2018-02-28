" Let <Tab> also do completion
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-----> this is for jumping out of function calls while programming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Get character at offset relative to cursor
function! PeekChar(offset)
    return getline(".")[col(".") - 1 + a:offset]
endfunction

inoremap <expr><CR> pumvisible()
            \? deoplete#mappings#close_popup() :
            \PeekChar(0) == ')' && PeekChar(-1) != ',' ?
            \"\<Right>" : "\<CR>"


