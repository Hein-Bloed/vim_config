" install dein and all plugins
runtime! plugins.vim

" basic configs and bindings which work without plugins
runtime! config/basic.vim
runtime! config/bindings.vim


" plugin configs
runtime! config/plugins/nerdtree.vim
runtime! config/plugins/airline.vim
runtime! config/plugins/undotree.vim
runtime! config/plugins/ctrlp.vim
runtime! config/plugins/fugitive.vim
runtime! config/plugins/deoplete.vim
