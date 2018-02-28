let g:ctrlp_show_hidden = 1

" we need this to make ctrlp work with nerdtree
let g:ctrlp_working_path_mode = 'rw'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
