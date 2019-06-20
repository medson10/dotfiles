filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'whatyouhide/vim-gotham'
Plugin 'mxw/vim-jsx'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mattn/emmet-vim'
Plugin 'chiel92/vim-autoformat'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'myusuf3/numbers.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'the-lambda-church/merlin'
Plugin 'rgrinberg/vim-ocaml'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'valloric/matchtagalways'
Plugin 'pangloss/vim-javascript'
Plugin 'wavded/vim-stylus'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'edkolev/tmuxline.vim'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'fatih/vim-go'
Plugin 'renyard/vim-git-flow-format'
Plugin 'raimondi/delimitmate'
Plugin 'shougo/neosnippet-snippets'
Plugin 'sbdchd/neoformat'
Plugin 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }
Plugin 'reasonml-editor/vim-reason-plus'
Plugin 'mru.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'janko-m/vim-test'
Plugin 'junegunn/gv.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'L9'
Plugin 'mbbill/undotree'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'dkprice/vim-easygrep'
Plugin 'ap/vim-css-color'
Plugin 'itchyny/vim-cursorword'
Plugin 'rrethy/vim-illuminate'
Plugin 'elixir-lang/vim-elixir'
Plugin 'junegunn/fzf'
Plugin 'majutsushi/tagbar'
Plugin 'yggdroot/indentline'
Plugin 'leafgarland/typescript-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'thinca/vim-quickrun'
Plugin 'cocopon/iceberg.vim'
Plugin 'jparise/vim-graphql'
Plugin 'reedes/vim-colors-pencil'
" Plugin 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'benmills/vimux'
Plugin 'mattn/webapi-vim'
Plugin 'wincent/command-t'
Plugin 'terryma/vim-expand-region'
Plugin 'wellle/targets.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'shougo/neomru.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'wellle/tmux-complete.vim'
Plugin 'metakirby5/codi.vim'
Plugin 'omnisharp/omnisharp-vim'
Plugin 'taglist.vim'
Plugin 'wvffle/vimterm'
Plugin 'thaerkh/vim-workspace'
Plugin 'YankRing.vim'
Plugin 'rip-rip/clang_complete'
Plugin 'msanders/cocoa.vim'
Plugin 'keith/swift.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'hashivim/vim-terraform'
Plugin 'thinca/vim-ref'
Plugin 'matze/vim-move'
Plugin 'jamessan/vim-gnupg'
Plugin 'udalov/kotlin-vim'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'itchyny/calendar.vim'
Plugin 'camelcasemotion'
Plugin 'flowtype/vim-flow'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'quramy/tsuquyomi'
Plugin 'guns/vim-sexp'
Plugin 'junegunn/vim-peekaboo'
Plugin 'mtth/scratch.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Shougo/neco-vim'
Plugin 'neoclide/coc-neco'
Plugin 'neoclide/coc.nvim'
Plugin 'neoclide/coc-imselect'

set hidden

" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ 'javascript': ['flow-language-server', '--stdio'],
"     \ 'javascript.jsx': ['flow-language-server', '--stdio'],
"     \ 'typescript': ['typescript-language-server', '--stdio'],
"     \ 'reason': ['ocaml-language-server', '--stdio'],
"     \ 'css': ['css-language-server', '--stdio'],
"     \ 'scss': ['css-language-server', '--stdio'],
"     \ 'sass': ['css-language-server', '--stdio'],
"     \ 'less': ['css-language-server', '--stdio'],
"     \ 'ocaml': ['ocaml-language-server', '--stdio'],
"     \ 'dot': ['dot-language-server', '--stdio'],
"     \ }
"
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>

call vundle#end()            " required

filetype plugin indent on    " required

if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

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

imap <C-a> <esc>0i
vmap <C-c> y
vmap <C-x> x
imap <C-v> <esc>P

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <leader>sad <C-w>_
nmap <leader>sar <C-w>|
nmap <leader>saa <C-w>=

noremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>


set tabstop=1
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
nnoremap <leader>nh :noh<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>w :wa<CR>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>u :tabprevious<cr>
nnoremap <leader>i :tabnext<cr>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>z :UndotreeToggle<cr>
nnoremap <leader>a :bp<cr>
nnoremap <leader>s :bn<cr>
nnoremap <leader>sr :vsp<cr>
nnoremap <leader>sd :sp<cr>
nnoremap <leader>gue :GitGutterLineHighlightsEnable<cr>
nnoremap <leader>st :SyntasticToggleMode<cr>
nnoremap <leader>y yy
nnoremap <leader>r :bufdo e<cr>
nnoremap <leader>pr :Prettier<cr>
nnoremap <leader>ws :ToggleWorkspace<CR>
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
" nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
" nnoremap <silent> lf :call LanguageClient_textDocument_hover()<cr>
" nnoremap <leader> gd :ALEGoToDefinitionInTab<CR>
" nnoremap <leader> fr :ALEFindReferences<CR>
" nnoremap <leader> gf :ALEHover<CR>
nnoremap <leader> gc :GV<cr>
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
nnoremap <leader>rpu :ReplaceUndo<cr>
nnoremap <leader>n :NERDTreeFind<cr>
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
nmap <F8> :TagbarToggle<CR>
nnoremap <leader>il :IndentLinesToggle<CR>
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map m/ <Plug>(incsearch-easymotion-/)
map m? <Plug>(incsearch-easymotion-?)
map mg/ <Plug>(incsearch-easymotion-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

map <space> /

set nocompatible
filetype plugin on
filetype indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" let g:ale_fixers = ['prettier', 'merlin', 'ols', 'refmt', 'tsserver', 'credo', 'mix', 'erlc', 'joker']
" let g:ale_linters_explicit = 0
" let g:ale_reason_ols_use_global = 1

let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''


let g:python_host_prog = '/Users/medson/.asdf/plugins/python/pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/medson/.asdf/plugins/python/pyenv/versions/neovim3/bin/python'

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:prettier#autoformat = 0
let g:prettier = "prettier"
let g:prettier#exec_cmd_async = 0
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#config#prose_wrap = 'preserve'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.graphql,*.md,*.vue PrettierAsync

let g:indentLine_color_term = 239

let g:user_emmet_mode='a'    "enable all function in all mode.

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|deps\|_build\|^\.DS_Store\|^\.git\|^\.coffee|^\ios\'
let g:ctrlp_working_path_mode = 0

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
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor

let g:acp_enableAtStartup = 0
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

autocmd FileType apache setlocal commentstring=#\ %s

let g:EasyGrepFilesToExclude=".svn,.git,node_modules,deps"
let g:EasyGrepCommand="grep"
let g:EasyGrepRecursive=1

let g:ctrlp_extensions = ['ctrlp-funky']
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

let NERDTreeShowHidden=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_checkers = ['eslint']

let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

let g:vimreason_extra_args_expr_reason = '"--print-width 90"'
let g:vimreason_extra_args_expr_reason = '"--print-width " . ' .  "winwidth('.')"
let g:vimreason_extra_args_expr_reason = '"--print-width " . ' .  "min([120, winwidth('.')])"
autocmd FileType reason map <buffer> <D-M> :ReasonPrettyPrint<Cr>

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:comfortable_motion_no_default_key_mappings = 1

let g:highlightedyank_highlight_duration = 1000

let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#ale#enabled = 1
let g:gotham_airline_emphasised_insert = 1
let g:airline_theme='gotham256'

set background=dark
syntax on

colorscheme gotham256

set hid
