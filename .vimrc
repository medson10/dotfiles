call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ajh17/spacegray.vim'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'townk/vim-autoclose'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'scrooloose/syntastic'
Plug 'plasticboy/vim-markdown'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yggdroot/indentline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
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
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
Plug 'elzr/vim-json'
Plug 'wavded/vim-stylus'
Plug 'moll/vim-node'
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'enricobacis/vim-airline-clock'
Plug 'renyard/vim-git-flow-format'
Plug 'wincent/ferret'
Plug 'shougo/neocomplete.vim'
Plug 'valloric/youcompleteme'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-endwise'
Plug 'raimondi/delimitmate'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'shougo/neosnippet-snippets'
Plug 'prettier/prettier'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'noahfrederick/vim-hemisu'
Plug 'noahfrederick/vim-noctu'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mbbill/undotree'
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \}

" (Oational) Multi-entry selection UI.
Plug 'junegunn/fzf'

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }

syntax enable

if has('gui_running')
	set guifont=Fira\ Code
endif

if &compatible
  set nocompatible
endif

filetype indent on

set wildmenu

set hidden
set backspace=indent
set backspace+=eol
set backspace+=start

set nobackup
set nowb
set noswapfile

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

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap o o<Esc>
nnoremap O O<Esc>

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoread
set tw=500
set ts=2 sw=2

set ai "Auto indent
set si "Smart indent
set ar "Autoread, update the opened files when they are changed"
set wrap "Wrap lines
set clipboard=unnamedplus

call plug#end()

let mapleader = ","

nnoremap <leader>d dd
nnoremap <leader>q :q<CR>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>u :tabprevious<cr>
nnoremap <leader>i :tabnext<cr>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>z :UndotreeToggle<cr>
nnoremap <leader>a :bp<cr>
nnoremap <leader>s :bn<cr>
set nocompatible

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

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:prettier#autoformat = 0
let g:prettier = "prettier"
let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 120

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'false'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee|^\ios'
let g:ctrlp_working_path_mode = 0

set background=dark
syntax on
colorscheme hemisu

