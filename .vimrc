filetype off

set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'whatyouhide/vim-gotham'
Plug 'myusuf3/numbers.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'bling/vim-airline'
Plug 'the-lambda-church/merlin'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'edkolev/tmuxline.vim'
Plug 'mbbill/undotree'
Plug 'dkprice/vim-easygrep'
Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'reedes/vim-thematic'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-endwise'
Plug 'timonv/vim-cargo'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'rust-lang/rust.vim'
Plug 'vimoutliner/vimoutliner'
Plug 'ollykel/v-vim'
Plug 'kamwitsta/mythos'
Plug 'sheerun/vim-wombat-scheme'
Plug 'kjssad/quantum.vim'
Plug 'knop-01/tortus'
Plug 'ajh17/spacegray.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sbdchd/neoformat'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'mitermayer/vim-prettier'
Plug 'rescript-lang/vim-rescript'
Plug 'SidOfc/mkdx'

set hidden

call plug#end()

filetype plugin indent on

if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

syntax enable

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
nnoremap <leader>p :FZF<cr>
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
nnoremap <leader>r :bufdo e<cr>
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
nnoremap <leader> gc :GV<cr>
nnoremap <leader>rpu :ReplaceUndo<cr>
nnoremap <leader>n :NERDTreeFind<cr>
nnoremap <leader>f :Neoformat<cr>

nnoremap <leader> gd :ALEGoToDefinitionInTab<CR>
nnoremap <leader> fr :ALEFindReferences<CR>
nnoremap <leader> gf :ALEHover<CR>


" Coc maps
"
" inoremap <silent><expr> <c-space> coc#refresh()
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" " Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" " Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" " Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" " Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" " Introduce function text object
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

" " Use <TAB> for selections ranges.
" " NOTE: Requires 'textDocument/selectionRange' support from the language server.
" " coc-tsserver, coc-python are the examples of servers that support it.
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" " Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings using CoCList:
" " Show all diagnostics.
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

set nocompatible
filetype plugin on
filetype indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType vim let b:vcm_tab_complete = 'vim'

let g:ale_reason_ols_use_global = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_enabled = 1
let g:ale_pattern_options_enabled = 1
let g:ale_completion_enabled = 0
let g:ale_echo_cursor = 1
let g:ale_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1

let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'

let g:python_host_prog = '/Users/medson/.asdf/plugins/python/pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/medson/.asdf/plugins/python/pyenv/versions/neovim3/bin/python'

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:prettier#autoformat = 0
let g:prettier = "prettier"
let g:prettier#exec_cmd_async = 0
let g:prettier#config#print_width = 120
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

let g:indentLine_color_term = 239

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

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

let g:EasyGrepFilesToExclude=".svn,.git,node_modules,deps"
let g:EasyGrepCommand="grep"
let g:EasyGrepRecursive=1

let NERDTreeShowHidden=1

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

let g:highlightedyank_highlight_duration = 1000

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1

let g:thematic#themes = {
\ 'mythos' :{ 'colorscheme': 'mythos',
\                  'background': 'dark',
\                },
\ 'quantum' :{ 'colorscheme': 'quantum',
\                  'background': 'dark',
\                },
\ 'tortus' :{ 'colorscheme': 'tortus',
\                  'background': 'dark',
\                },
\ 'spacegray' :{ 'colorscheme': 'spacegray',
\                  'background': 'dark',
\                  'airline-theme': 'hybrid'
\                },
\ 'jellybeans' :{ 'colorscheme': 'jellybeans',
\                  'background': 'dark',
\                  'airline-theme': 'jellybeans'
\                },
\ 'gotham256' :{ 'colorscheme': 'gotham256',
\                  'background': 'dark',
\                  'airline-theme': 'gotham256'
\                },
\ 'gotham' :{ 'colorscheme': 'gotham',
\                  'background': 'dark',
\                  'airline-theme': 'gotham'
\                },
\ 'light' :{ 'colorscheme': 'one',
\                  'background': 'light',
\                  'airline-theme': 'badwolf'
\                }
\ }

let g:thematic#theme_name = 'gotham256'

set hid
