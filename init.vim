
call plug#begin()

Plug 'vim-scripts/vim-plug'       " plugin manager
Plug 'folke/tokyonight.nvim'      " theme
Plug 'tpope/vim-fugitive'         " git commands in nvim
Plug 'tpope/vim-rhubarb'	  " Fugitive companion to interact with GitHub

" Plug 'neovim/nvim-lspconfig'	  " collection of configurations for built-in LSP client
Plug 'w0rp/ale'			  " Async Lint Engine which also acts as an LSP client

Plug 'junegunn/fzf'    		  " fzf fuzzy finder
Plug 'junegunn/fzf.vim'           " fzf fuzzy finder preconfigured for noobs
Plug 'ervandew/ag'		  " fzf dependencies:  ag 
Plug 'burntsushi/ripgrep'         " fzf dependencies:  rg
Plug 'sharkdp/bat'		  " fzf dependencies:  bat 

call plug#end()


set rtp+=/opt/homebrew/opt/fzf       " for using fzf cmd (rtp = runtimepath)


set number

" after a search, just press enter again to make highlights go away
nnoremap <silent> <CR> :nohlsearch<CR><CR>   
	

set shiftwidth=4 smarttab
set tabstop=8 softtabstop=0
set clipboard=unnamed
colorscheme tokyonight-moon


let mapleader = ","

" map fzf :Files cmd to ctrl-f
nnoremap <silent> <Leader>f :Files<CR>      



" help ALE find the CCLS C++ linter
let g:ale_cpp_clangd_executable="clangd"
let g:ale_cpp_ccls_executable="ccls"
let g:ale_cpp_ccls_init_options = {
    \   'cacheDirectory': '/opt/homebrew/bin/ccls',
    \   'cacheFormat': 'binary',
    \   'diagnostics': {
    \     'onOpen': 0,
    \     'opChange': 1000,
    \   },
\ }


" set which linters you want ALE to use
" use :ALEInfo to check what ALE is using for the given program
let g:ale_linters = {     
\   'python': ['pyright'],
\   'cpp': ['ccls', 'clangd', 'cc'],
\ }
