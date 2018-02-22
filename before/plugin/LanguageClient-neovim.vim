let g:LanguageClient_serverCommands = {
    \ 'cpp': ['cquery', '--language-server', '--log-file=/tmp/cq.log'],
    \ 'c': ['cquery', '--language-server', '--log-file=/tmp/cq.log'],
    \ }

let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
let g:LanguageClient_settingsPath = '/home/lukas/.config/nvim/settings.json'
set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()
