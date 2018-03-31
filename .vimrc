call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mxw/vim-jsx'
Plug 'ajh17/spacegray.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'townk/vim-autoclose'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'
Plug 'yggdroot/indentline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'nanotech/jellybeans.vim'
Plug 'ap/vim-css-color'
Plug 'chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'shougo/vimproc.vim'
Plug 'reasonml/vim-reason'
Plug 'the-lambda-church/merlin'
Plug 'rgrinberg/vim-ocaml'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tomtom/tcomment_vim'
Plug 'chiel92/vim-autoformat'
Plug 'rakr/vim-one'
Plug 'w0ng/vim-hybrid'
Plug 'challenger-deep-theme/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'isruslan/vim-es6'
Plug 'elzr/vim-json'
Plug 'wavded/vim-stylus'
Plug 'moll/vim-node'
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax'
Plug 'danro/rename.vim'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'jiangmiao/auto-pairs'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'cocopon/iceberg.vim'
Plug 'tpope/vim-surround'
Plug 'valloric/matchtagalways'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'edkolev/promptline.vim'
Plug 'enricobacis/vim-airline-clock'
Plug 'renyard/vim-git-flow-format'
Plug 'sonph/onehalf'
Plug 'gosukiwi/vim-atom-dark'
Plug 'jacoborus/tender'
Plug 'liuchengxu/space-vim-dark'
Plug 'wincent/ferret'
Plug 'shougo/neocomplete.vim'
Plug 'valloric/youcompleteme'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-endwise'
Plug 'raimondi/delimitmate'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'shougo/neosnippet-snippets'

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \}

" (Oational) Multi-entry selection UI.
Plug 'junegunn/fzf'

let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }

set hidden

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <C-k> :call LanguageClient_textDocument_formatting()<CR>

set formatexpr=LanguageClient_textDocument_rangeFormatting()

" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc>0i
" CTRL-C to copy (visual mode)
vmap <C-c> y
" CTRL-X to cut (visual mode)
vmap <C-x> x
" CTRL-V to paste (insert mode)
imap <C-v> <esc>P
" CTRL-Enter to insert new line in normal mode

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap <C-u> :tabprevious<CR>
nnoremap <C-i>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-s> 		 :w<CR>
nnoremap <C-z> 		 <Esc>u<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap o o<Esc>
nnoremap O O<Esc>

map <C-m> :NERDTreeToggle<CR>
map <C-q> :q<CR>

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoread
set tw=500
set ts=2 sw=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set clipboard=unnamedplus

call plug#end()

let mapleader = ","

nnoremap <leader>d dd
nnoremap <leader>p <C-S-v>
nnoremap <leader>c <C-S-c>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line

" set background=dark
" colorscheme hybrid

"  colorscheme iceberg

"colorscheme challenger_deep

" colorscheme spacegray

" syntax on
" colorscheme hemisu

syntax on
colorscheme dracula

" set background=dark
" set termguicolors
" let g:quantum_black=1
" let g:quantum_italics=1
" colorscheme quantum
" let g:airline_theme='quantum'

" colorscheme atom-dark

