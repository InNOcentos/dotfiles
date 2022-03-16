call plug#begin('~/.vim/plugged')

" ========== Debugger ==========
Plug 'puremourning/vimspector'

" ========== Maximizer ==========
Plug 'szw/vim-maximizer'

" ========== backgound ==========
"Plug 'tribela/vim-transparent'

" ========== Typescript, linter, snippets... ==========
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

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
Plug 'morhetz/gruvbox'
Plug 'habamax/vim-gruvbit'
"Plug 'sainnhe/edge'
"Plug 'vim-scripts/billw.vim'
"Plug 'lifepillar/vim-solarized8'
"Plug 'KeitaNakamura/neodark.vim'
"Plug 'EdenEast/nightfox.nvim'
"Plug 'sonph/onehalf'
"Plug 'joshdick/onedark.vim'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'altercation/vim-colors-solarized'
"Plug 'sainnhe/everforest'
"Plug 'dracula/vim'
"Plug 'Rigellute/rigel'
"Plug 'savq/melange'
"Plug 'sainnhe/sonokai'
"Plug 'doums/darcula'
"Plug 'dunstontc/vim-vscode-theme'
"Plug 'mikker/seoul256-iTerm'
"Plug 'mhartington/oceanic-next'
"Plug 'junegunn/seoul256.vim'
"Plug 'gruvbox-community/gruvbox'
"Plug 'morhetz/gruvbox'
"Plug 'vim-scripts/Ambient-Color-Scheme'
"Plug 'vivkin/flatland.vim'
"Plug 'glepnir/oceanic-material'
"Plug 'softmotions/vim-dark-frost-theme'
"Plug 'filipekiss/night-hawk'
"Plug 'damage220/solas.vim'
"Plug 'cocopon/iceberg.vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'carakan/new-railscasts-theme'
"Plug 'vim-scripts/Zenburn'
"Plug 'mdlerch/tungsten.vim'
"Plug 'haystackandroid/vim-crunchbang'
"Plug 'habamax/vim-bronzage'
"Plug 'conweller/muted.vim'
"Plug 'AlxHnr/clear_colors'
"Plug 'mhinz/vim-janah'
"Plug 'nanotech/jellybeans.vim'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'Blevs/vim-dzo'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'haystackandroid/carbonized'
"Plug 'gwutz/vim-materialtheme'
"Plug '29decibel/codeschool-vim-theme'
"Plug 'scottymoon/vim-twilight'
"Plug 'juanedi/predawn.vim'
"Plug 'parkerault/onivim-theme-hybrid'
"Plug 'habamax/vim-habamax'
"Plug 'tomasiser/vim-code-dark'
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

"let g:solarized_termcolors = 16
"let g:solarized_contrast= "low"
let g:solarized_visibility= "high"
let g:solarized_diffmode= "high"
let g:solarized_termtrans= 0
let g:solarized_statusline= "flat"
let g:solarized_old_cursor_style = 1

syntax on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors

"set background=dark

let g:gruvbit_contrast_dark = 'soft'
let g:gruvbox_bold = 1
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

"lua << EOF

"local nightfox = require('nightfox')
"nightfox.setup({
"fox = "nordfox", -- change the colorscheme to use nordfox
"visual = true, 
"alt_nc = true,
"search = true, 
"styles = {
"comments = "italic", -- change style of comments to be italic keywords = "bold", -- change style of keywords to be bold
"functions = "bold" -- styles can be a comma separated list
"},
"colors = {
"--bg = "#353c4a", -- Override the red color for MAX POWER
"bg = "#2b3943", -- Override the red color for MAX POWER
"--bg = "#39404f", -- Override the red color for MAX POWER
"},
"})
"nightfox.load()

"EOF

" ===== ZENBURN SETTINGS =====
let g:zenburn_disable_Label_underline = 1
"let g:zenburn_transparent = 1
let g:zenburn_old_Visual = 1
let g:zenburn_enable_TagHighlight=1

colorscheme zenburn

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
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gc :Git commit<CR>
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

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" sync open file with NERDTree
" " Check if NERDTree is open or active

" Highlight currently open buffer in NERDTree

let g:coc_disable_startup_warning = 1

" coc config
let g:coc_global_extensions = [
  "\ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-prettier', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_nfo()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


