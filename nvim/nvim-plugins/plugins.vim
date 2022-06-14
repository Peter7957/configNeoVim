call plug#begin('~/.vim/plugged')

"THEME
Plug 'srcery-colors/srcery-vim'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'navarasu/onedark.nvim'

"LSP	
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
 
"Plugins para javascript
Plug 'pangloss/vim-javascript'

"snipets
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" EMMET
Plug 'mattn/emmet-vim'

" comentarios
Plug 'tpope/vim-commentary'

Plug 'Yggdroot/indentLine' 
Plug 'vim-airline/vim-airline' 
Plug 'ryanoasis/vim-devicons'
"Colmpletin
Plug 'nvim-lua/completion-nvim'

"COC
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'



 call plug#end()

lua << EOF
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF

" require("nvim-lsp-installer").setup {}"


" EMMET configuracion
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
\ 'javascript':{
\ 'extends':'jsx'
\ }
\ }

" configuracion de airline
let g:airline#extensions#tabline#enabled = 1

" Prettier configuracion
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <C-D> :Prettier<CR>


let NERDTreeQuitOnOpen=1


" snippets configuracion
"let g:UtilSnipsExpandTrigger="<tab>"
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect


" Avoid showing message extra message when using completion
set shortmess+=c
 
" " Or if you have Neovim >= 0.1.5 
" if (has("termguicolors"))
"  set termguicolors
" endif

" Theme
" syntax enable
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic =
" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE
" colorscheme OceanicNext

let g:onedark_config = {
  \ 'style': 'darker',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
\ }
colorscheme onedark
