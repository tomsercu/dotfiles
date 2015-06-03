set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=indent
set foldnestmax=2
" adding jure's F9 and F10 commands
:map <F9> :w<cr>:exe "!python ".shellescape(expand("%"))<cr>
:map <F10> :w<cr>:!clear && time python2 %<cr>
