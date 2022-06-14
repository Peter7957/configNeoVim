let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
imap <Leader><Leader> <Esc>
nmap <Leader>s <Plug>(easymotion-s2)
imap <Leader>l <Esc>:bnext<CR>a 
imap <Leader>h <Esc>:bprev<CR>a


nnoremap <Leader>+ :Commentary<CR>
vnoremap <Leader>+ :Commentary<CR>
 
"NERDTree
" Use alt + hjkl to resize windows
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>
nmap <Leader>nt :NERDTreeFind<CR>

" Move between buffers
nnoremap <leader><tab> :bn<cr>
nnoremap <leader><S-tab> :bp<cr>

" Closing and hiding current buffer
nnoremap <leader>bb :bd<cr>

"poner puntocoma
nnoremap <Leader>; $a;<Esc>


"tmuxnavigator
nnoremap  <Leader><S-h> :TmuxNavigateLeft<CR>
imap <Leader><S-h>	:TmuxNavigateLeft<CR>
nnoremap <Leader><S-j> :TmuxNavigateDown<CR>
nnoremap <Leader><S-k> :TmuxNavigateTop<CR>
nnoremap <Leader><S-l> :TmuxNavigateRight<CR>
imap <Leader><S-l>	:TmuxNavigateRight<CR>


nmap <C-j> 10<C-e>
nmap <C-k> 10<C-y>
