" remap leader to space
let mapleader = " "

" remap window opening
nnoremap <leader>wh <C-w>v
nnoremap <leader>wv <C-w>n
nnoremap <leader>wd <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>ww <C-w><C-w>

" buffer shortcuts
map <leader>bd :bd<CR>
nnoremap <leader>bf :ls<CR>:b<space>
map <leader>bb :bnext<CR>


" close vim via space+q+q
map <leader>qq :qa<CR>

" save file with space+f+s
map <leader>fs :w<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-----> this is for jumping out of function calls while programming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Get character at offset relative to cursor
function PeekChar(offset)
    return getline(".")[col(".") - 1 + a:offset]
endfunction

" Conditionally remap Enter in insert mode
inoremap <expr> <Enter> PeekChar(0) == ')' && PeekChar(-1) != ',' ? "\<Right>" : "\<Enter>"
