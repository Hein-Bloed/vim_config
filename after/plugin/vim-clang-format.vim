" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc noremap <leader><tab> :ClangFormat<CR>
autocmd FileType c,cpp,objc ClangFormatAutoEnable
