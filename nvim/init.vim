call plug#begin('~/.vim/plugged')

" ========== Debugger ==========
Plug 'puremourning/vimspector'

" ========== Maximizer ==========
Plug 'szw/vim-maximizer'

" ========== backgound ==========
"Plug 'tribela/vim-transparent'
" ========== Javascript.==========
Plug 'pangloss/vim-javascript'

" ========== Typescript, linter, snippets... ==========
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'L3MON4D3/LuaSnip'

"Plug 'prettier/vim-prettier', {
  "\ 'do': 'yarn install --frozen-lockfile --production',
  "\ 'branch': 'release/0.x'
  "\ }
" ========== Navigation ==========
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "Plug 'stsewd/fzf-checkout.vim'
Plug 'eugen0329/vim-esearch'
Plug 'christoomey/vim-tmux-navigator'

"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'dyng/ctrlsf.vim'

" ========== Git ==========
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

" ========== Commenter ==========
Plug 'scrooloose/nerdcommenter'

" ========== Pairs ==========
Plug 'jiangmiao/auto-pairs'

" ========== Npm ==========
"Plug 'neoclide/npm.nvim', {'do' : 'npm install'}

" ========== Json ==========
Plug 'elzr/vim-json'

" ========== C syntax ==========
"Plug 'vim-scripts/c.vim'

" ========== Themes ========== 
"Plug 'acepukas/vim-zenburn'
"Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'sjl/badwolf'
"Plug 'vim-scripts/grishin-color-scheme'
"Plug 'gilgigilgil/anderson.vim'
"Plug 'relastle/bluewery.vim'
"Plug 'habamax/vim-gruvbit'
"Plug 'navarasu/onedark.nvim'
Plug 'sainnhe/edge'
"Plug 'vim-scripts/billw.vim'
"Plug 'KeitaNakamura/neodark.vim'
"Plug 'sonph/onehalf'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'sainnhe/everforest'
"Plug 'Rigellute/rigel'
"Plug 'savq/melange'
Plug 'sainnhe/sonokai'
Plug 'doums/darcula'
"Plug 'mikker/seoul256-iTerm'
"Plug 'mhartington/oceanic-next'
"Plug 'junegunn/seoul256.vim'
"Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'
"Plug 'vim-scripts/Ambient-Color-Scheme'
"Plug 'vivkin/flatland.vim'
Plug 'softmotions/vim-dark-frost-theme'
Plug 'filipekiss/night-hawk'
"Plug 'damage220/solas.vim'
"Plug 'glepnir/oceanic-material'
"Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dunstontc/vim-vscode-theme'
"Plug 'dracula/vim'
"Plug 'altercation/vim-colors-solarized'
Plug 'jhlgns/naysayer88.vim'
Plug 'lifepillar/vim-solarized8'
"Plug 'EdenEast/nightfox.nvim'
"Plug 'parkerault/onivim-theme-hybrid'
"Plug 'nanotech/jellybeans.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'olimorris/onedarkpro.nvim'
"Plug 'carakan/new-railscasts-theme'
"Plug 'vim-scripts/Zenburn'
"Plug 'mdlerch/tungsten.vim'
"Plug 'haystackandroid/vim-crunchbang'
"Plug 'habamax/vim-bronzage'
"Plug 'conweller/muted.vim'
"Plug 'AlxHnr/clear_colors'
"Plug 'mhinz/vim-janah'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'Blevs/vim-dzo'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'haystackandroid/carbonized'
"Plug 'gwutz/vim-materialtheme'
"Plug '29decibel/codeschool-vim-theme'
"Plug 'scottymoon/vim-twilight'
"Plug 'juanedi/predawn.vim'
"Plug 'habamax/vim-habamax'
"Plug 'savq/melange'

" ========== Indents ==========
Plug 'yggdroot/indentline'

" ########## Images ##########
"Plug 'ashisha/image.vim'

" ========== Random ==========
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'tsony-tsonev/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons'

call plug#end()

" ########## Indents ##########
let g:indentLine_char_list = ['│', '│', '│', '│']
set list
set listchars=tab:\│\ ,trail:·
" ----------
"set lcs+=space:.
"set list!

"au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()

" ########## Main ##########
" json as jsonc

:let mapleader = "\<Space>"

augroup JsonToJsonc
  autocmd! FileType json set filetype=jsonc
augroup END

"set cursorcolumn
set colorcolumn=120

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set relativenumber
set number

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses ppaces instead of tab characters
set expandtab

"indent
set backspace=indent,eol,start
set autoindent
set smartindent
set cindent
set backspace=indent,eol,start

let g:vim_json_syntax_conceal = 0
set conceallevel=0

" ===== ONEDARK SETTINGS =====

"let g:onedark_terminal_italics = 1
"let g:onedark_hide_endofbuffer = 1

" ===== SOLARIZED SETTINGS =====

let g:solarized_termcolors = 16
"let g:solarized_contrast= "low"
let g:solarized_visibility= "high"
let g:solarized_diffmode= "high"
let g:solarized_termtrans= 0
let g:solarized_statusline= "flat"
let g:solarized_old_cursor_style = 1

syntax on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors

set background=dark

let g:gruvbit_contrast_dark = 'soft'
"let g:gruvbox_bold = 1
"
" ===== GRUVBIT SETTINGS =====
" Italics
augroup colorscheme_change | au!
  au ColorScheme gruvbit hi Comment gui=italic cterm=italic
augroup END
" Bold statements
func! s:gruvbit_setup() abort
  hi Comment gui=italic cterm=italic
  hi Statement gui=bold cterm=bold
endfunc

augroup colorscheme_change | au!
  au ColorScheme gruvbit call s:gruvbit_setup()
augroup END
" Transbg
let g:gruvbit_transp_bg = v:true


let g:tokyonight_style = "storm"

" ===== NIGHTFOX SETTINGS =====


" ===== ZENBURN SETTINGS =====
let g:zenburn_disable_Label_underline = 1
let g:zenburn_old_Visual = 1
let g:zenburn_enable_TagHighlight=1
"let g:zenburn_transparent = 1

"lua << EOF

"local onedark = require('onedark')
"onedark.setup  {
    "-- Main options --
    "style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    "transparent = false,  -- Show/hide background
    "term_colors = true, -- Change terminal color as per the selected theme style
    "ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    "-- toggle theme style ---
    "toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    "toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    "-- Change code style ---
    "-- Options are italic, bold, underline, none
    "-- You can configure multiple style with comma seperated, For e.., keywords = 'italic,bold'
    "code_style = {
        "comments = 'italic',
        "keywords = 'none',
        "functions = 'none',
        "strings = 'none',
        "variables = 'none'
    "},

    "-- Custom Highlights --
    "colors = {}, -- Override default colors
    "highlights = {}, -- Override highlight groups

    "-- Plugins Config --
    "diagnostics = {
        "darker = true, -- darker colors for diagnostic
        "undercurl = true,   -- use undercurl instead of underline for diagnostics
        "background = true,    -- use background color for virtual text
    "},
"}
"onedark.load()
"EOF


colorscheme gruvbox

" ########## Maximizer ##########
nnoremap <leader>m :MaximizerToggle<CR>


" ########## Debugger ##########
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d[ :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint


" ########## Git ##########
nmap<leader>gs :G<CR>
nmap<leader>gj :diffget //2<CR>
nmap<leader>gk :diffget //3<CR>
nnoremap <leader>gb :Git checkout<CR>
"nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gd :G difftool -y<CR>
nnoremap <leader>gfd :Gvdiffsplit<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gl :G log<CR>
" dv - diff for file (in git status)
" Gvdiffsplit - diff for file inside file
" G difftool -y - all diffs for all files in tabs
" coo checkout to commit
" G log - commit history
" CONFGLICTS
" Gvdiffsplit!
" d2o - left
" d3o - right
" help fugitive
hi DiffAdd gui=NONE guifg=yellow guibg=black

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

" ########## Mac stuff ##########
" Only for mac - else disable
" In ~/.vimrc: 
map <C-p> :CtrlP<cr>
map <D-p> :CtrlP<cr>
" In ~/.gvimrc:
if has('gui_macvim')
  " This removes the Cmd-P binding from 'Print':
  macmenu &File.Print key=<nop>
endif



map , <C-^>

" ########## Navigation ##########
nnoremap <leader>1 :'Q<CR>
nnoremap <leader>2 :'W<CR>
nnoremap <leader>3 :'E<CR>
nnoremap <leader>4 :'R<CR>

nnoremap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

inoremap jk <ESC> ??
" ctrlp
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"FZF MAPPINGS
nnoremap <silent>; :GFiles<CR>
nnoremap <silent> <leader>; :Files<CR>
nnoremap <silent> <leader>'' :Buffers<CR>
"nnoremap <leader>ff :Rg! 
"nnoremap ; :GFiles<CR>
"nnoremap ; :GFiles<CR>
"nnoremap ; :GFiles<CR>
"map <leader>; :Files ~<CR>

" ########## Searching ##########
:map <F9> :cnf
"nnoremap <C-f> :Ag **/*<Cr>

" ########## Random  & CursorColumn bg ##########
cabb W w
cabb Q q

"hi CursorColumn guibg=#404040

" ########## Coc stuff ##########
set hidden 
let g:coc_disable_startup_warning = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-prettier', 
  \ ]
set updatetime=300
set shortmess+=c

set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <F2> <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

