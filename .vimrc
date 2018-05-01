filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ajh17/spacegray.vim'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'townk/vim-autoclose'
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yggdroot/indentline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ap/vim-css-color'
Plugin 'chiel92/vim-autoformat'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'myusuf3/numbers.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'reasonml/vim-reason'
Plugin 'the-lambda-church/merlin'
Plugin 'rgrinberg/vim-ocaml'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'dracula/vim', { 'as': 'dracula' }
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'isruslan/vim-es6'
Plugin 'elzr/vim-json'
Plugin 'wavded/vim-stylus'
Plugin 'moll/vim-node'
Plugin 'sheerun/vim-polyglot'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'renyard/vim-git-flow-format'
Plugin 'wincent/ferret'
Plugin 'shougo/neocomplete.vim'
Plugin 'sirver/ultisnips'
Plugin 'tpope/vim-endwise'
Plugin 'raimondi/delimitmate'
Plugin 'davidhalter/jedi-vim'
Plugin 'shougo/neosnippet-snippets'
Plugin 'prettier/prettier'
Plugin 'sbdchd/neoformat'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'noahfrederick/vim-hemisu'
Plugin 'noahfrederick/vim-noctu'
Plugin 'mbbill/undotree'
Plugin 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \}
Plugin 'w0rp/ale'

" (Oational) Multi-entry selection UI.
Plugin 'junegunn/fzf'


call vundle#end()            " required
filetype plugin indent on    " required

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

" Enable completion where available.
let g:ale_completion_enabled = 1

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

let mapleader = ","

nnoremap <leader>d dd
nnoremap <leader>q :q<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>w :wa<CR>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>u :tabprevious<cr>
nnoremap <leader>i :tabnext<cr>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>z :UndotreeToggle<cr>
nnoremap <leader>a :bp<cr>
nnoremap <leader>s :bn<cr>
nnoremap <leader>g :GitGutterLineHighlightsEnable<cr>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>y yy
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <C-k> :call LanguageClient_textDocument_formatting()<CR>

set nocompatible
filetype plugin on
filetype indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup load_ycm
  autocmd!
  autocmd CursorHold, CursorHoldI * :packadd YouCompleteMe
        \ | autocmd! load_ycm
augroup END

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
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.graphql,*.md,*.vue PrettierAsync

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

let NERDTreeShowHidden=1

set background=dark
syntax on
colorscheme hemisu

