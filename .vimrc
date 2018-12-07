set autoindent
set smartcase
set tabstop=4
set shiftwidth=4
set spell

syntax on
set number
set background=dark
let g:solarized_termtrans=1
"let g:solarized_contrast="high"
"let g:solarized_termcolors=256
colorscheme solarized

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
autocmd FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

nnoremap <F1> :!clear; %:p<Enter>
nnoremap <F2> "+p
vmap <F2> "+p
nnoremap <F3> "+y
vmap <F3> "+y
nnoremap <F4> ggVG=
nnoremap <F5> ggdG
nnoremap <F6> [{V]}zf

nnoremap > :vertical resize +20<ENTER>
nnoremap < :vertical resize -20<ENTER>

imap <buffer> `for <C-O>mzfor( %%%; %%%; %%%) {<CR><TAB>%%%<CR><BACKSPACE>}<CR><C-O>'z``
imap <buffer> `sngr <C-O>mzvar gr = new GlideRecord("%%%");<C-O>'z``
imap <buffer> `sngdt <C-O>mzvar gdt = new GlideDateTime();<C-O>
imap <buffer> `snsi <C-O>mzvar %%% = Class.create();<CR>%%%.prototype = {<CR>initialize: function() {<CR><CR>},<CR><CR>type: '%%%'<CR>}<C-O>`z``
imap <buffer> `jsf <C-O>mzfunction %%%(%%%) {<CR><TAB>%%%<CR><BACKSPACE>}<C-O>'z``
imap <buffer> `wl <C-O>mzwhile(%%%) {<CR><TAB>%%%<CR><BACKSPACE>}<C-O>'z``
imap <buffer> `if <C-O>mzif(%%%) {<CR><TAB>%%%<CR><BACKSPACE>}<C-O>'z``
imap <buffer> `` <C-O>/%%%<CR><C-O>c3l
imap <buffer> `pp <C-O>P<C-O>
imap <buffer> <ESC> <ESC><ESC>
nmap <buffer> `` /%%%<CR>c3l
