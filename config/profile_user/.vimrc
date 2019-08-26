syntax on
:set autoindent
:set shiftwidth=2
:set tabstop=2
:set number
:set viminfo=""
filetype plugin indent on

:map <F5> :w<CR>:!gcc % -o %<; ./%<<C-M>
:map <F6> :w<CR>:!g++ % -o %<; ./%<<C-M>
:map <F7> :w<CR>:!javac %; java %:r<C-M>
:map <F8> :w<CR>:!latex %; dvipdf %<.dvi %<.pdf; evince -p 1 %:p:r.pdf &<C-M>
:map <F9> :!date<C-M>
