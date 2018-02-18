"install dein as plugin manager
let g:dein_repo = 'https://github.com/Shougo/dein.vim.git'
let g:dein_dir = '~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'

if empty(glob(g:dein_dir))
  exec 'silent !mkdir -p '.g:dein_dir
  exec '!git clone '.g:dein_repo.' '.g:dein_dir
endif
exec 'set runtimepath^='.g:dein_dir

call dein#begin(expand('~/.config/nvim/dein'))

" install all packages
call dein#add('Shougo/dein.vim')

call dein#add('scrooloose/nerdtree',
        \{'on_cmd': 'NERDTreeToggle'})

call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

call dein#add('mbbill/undotree',
    \{'on_cmd' : 'UndotreeToggle'})

call dein#add('ctrlpvim/ctrlp.vim',
    \{'on_cmd' : 'CtrlP'})

call dein#add('jiangmiao/auto-pairs')

call dein#add('tpope/vim-fugitive')

call dein#add('ntpeters/vim-better-whitespace')

call dein#add('autozimu/LanguageClient-neovim',
    \{'rev': 'next',
    \'build': 'bash install.sh'})

" deoplete
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#add('SirVer/ultisnips')

call dein#add('octol/vim-cpp-enhanced-highlight')

call dein#add('scrooloose/nerdcommenter')

call dein#end()
call dein#save_state()


if dein#check_install()
  call dein#install()
endif
