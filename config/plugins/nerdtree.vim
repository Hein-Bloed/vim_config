" remap nerdtree toggle to <space>tt
map <leader>tt :NERDTreeToggle<CR>
map <leader>cd :NERDTree<space>~/

" automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1

" autómaticaly close nerdtree when you open a file
let NERDTreeQuitOnOpen = 1

" make nerdtree more pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" we need this to make it work with CtrlP
let g:NERDTreeChDirMode = 2

