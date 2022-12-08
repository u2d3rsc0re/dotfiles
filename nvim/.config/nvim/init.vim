syntax on
set completeopt=menuone,noselect
set autoindent
set number
set shiftwidth=4
set tabstop=4 
set smarttab
set expandtab
colo yin
filetype plugin indent on
filetype plugin on
set ttyfast

" for viki stuff
let g:vimwiki_list = [{'path':'/home/user/notes', 'syntax':'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1
let g:taskwiki_markup_syntax = 'markdown'

" Use persistent history.
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

" floatterm
let g:floatterm_keymap_new = "<Leader>fx"
let g:floatterm_keymap_toggle = "<Leader>x"


let mapleader = "\<Space>"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
noremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <C-n> :NERDTree<cr>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

noremap! <C-h> <C-w>

call plug#begin('~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'preservim/nerdtree'
Plug 'huyvohcmc/atlas.vim'
Plug 'junegunn/fzf.vim'
Plug 'fiatjaf/neuron.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'voldikss/vim-floaterm'

call plug#end()

lua require('user.telescope')
lua require('user.lspconfig')
lua require('user.compe')
