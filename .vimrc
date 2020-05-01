"************************************************/
"                                                *
" Renzo Adriano Alvaroshan .vimrc Setting        * 
"                                                *
" Maintainer: Renzo Adriano Alvaroshan           *
" First edit: 2019 Jan 24                        *
" Last edit : 2020 Apr 29                        *
"                                                *
" Font: Meslo LG L Regular for Powerline         *
" Size: 15                                       *
" Alt : Menlo Regular 13pt, IBM Plex Mono 13pt   *
"                                                *
" Loaded without .vimrc = $ vim -u NONE          *
"************************************************\


"************************************************\
"                                                *
" Sections:                                      * 
"   01 General setting                           *
"   02 User interface                            *
"   03 Color and font                            *
"   04 Files and backups                         *
"   05 Text, tab and indent related              *
"   06 Visual-mode related                       *
"   07 Move around, tab, window, buffer          *
"   08 Status line                               *
"   09 Editing mapping                           *
"   10 Spell checking and abbreviation           *
"   Theme and Colors                             *
"   11 Plugin » vundlevim/vundle.vim             *  $$$$$
"   12 Plugin » vim-airline/vim-airline          *  $$$$$
"   13 Plugin » vim-airline/vim-airline-themes   *
"   14 Plugin » altercation/vim-colors-solarized *
"   Tim Pope                                     *
"   15 Plugin » tpope/vim-commentary             *
"   16 Plugin » tpope/vim-fugitive               *
"   17 Plugin » tpope/vim-surround               *  $$$$$
"   18 Plugin » tpope/vim-unimpaired             *
"   19 Plugin » tpope/vim-vinegar                *
"   File Manager                                 *
"   20 Plugin » kien/ctrlp.vim                   *  $$$  { 'on': ['Ctrl'] }
"   21 Plugin » junegunn/fzf.vim                 *
"   22 Plugin » scrooloose/nerdtree              *  $$$$$  { 'on': 'NERDTreeToggle' }
"   23 Plugin » scrooloose/nerdcommenter         *
"   Editing Tools                                *
"   26 Plugin » mattn/emmet-vim                  *  $$$$$
"   29 Plugin » csscomb/vim-csscomb              *
"   30 Plugin » jiangmiao/auto-pairs             *  $$$$$
"   31 Plugin » godlygeek/tabular                *  $$$$$
"   32 Plugin » easymotion/vim-easymotion        *
"   32 Plugin » easymotion/vim-easymotion        *
"   33 Plugin » rizzatti/dash.vim                *
"   34 Set _______ Plugin                        *
"   91 Plugin » matchit.zip                      *  This is an evaluation!!!
"   92 Plugin » vim-scripts/autocomplpop         *  This is an evaluation!!!
"   93 Plugin » valloric/youcompleteme           *  This is an evaluation!!!  { 'on': [], 'd??
"   94 Plugin » neoclide/coc.nvim                *  This is an evaluation!!!
"   95 Plugin » _____/twiddlecase                *  This is an evaluation!!!
"   97 Plugin » ryanoasis/vim-devicons           *  Put at latest always
"   98 KEY MAPPING                               *
"   99 ADDITIONAL KEY MAPPING                    *
"                                                *
"************************************************/

" NOTES: Type ":so %" to refresh .vimrc after making changes
" vim:foldmethod=marker (foldmethod or fdm)


"****************************************/
"                                        *
" 01 General Setting                     *
"                                        *
"****************************************/

set nocompatible                  " This setting must be as early as  possible, as it has side effects
set path+=~/Sites,**              " Set the runtime path to search for files
let mapleader = ","               " Leader key for extra key combination (set before Vundle starts loading plugins)
" Map <leader>w to save current file (fast saving)
nmap <leader>w :w!<cr>

"-- EXTERNAL CONFIGS --
"source ~/.vim/config/autoclose.vim

#! <!--                                                               
ab #d #define                                                            
ab #i #include                                                           
ab #b /*************************************************                 
ab #e *************************************************/                 
ab #l /*----------------------------------------------*/                 

" Open Help file in new tab
cab help tab help

" =============== The following lines are configuration for Vundle (Vim plugin manager) ===============
filetype off                      " Required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim " Set the runtime path to include Vundle 
call vundle#begin()               " Initialize -- keep Plugin commands between vundle#begin and vundle#end
  Plugin 'vundlevim/vundle.vim'             " 11 Vundle = plugin manager (run ':source %' then ':PluginInstall')
  Plugin 'vim-airline/vim-airline'          " 12 Airline = statusline colorscheme
  Plugin 'vim-airline/vim-airline-themes'   " 13 Airline Themes = colortheme for status bar
  Plugin 'altercation/vim-colors-solarized' " 14 Solarize Themes = colortheme from Ethan Schooner
  Plugin 'tpope/vim-commentary'             " 15 Vim-commentary = comment stuff out
  Plugin 'tpope/vim-fugitive'               " 16 Fugitive = git wrapper
  Plugin 'tpope/vim-surround'               " 17 Surround = surroundings parentheses, brackets, quotes, XML tags, etc
  Plugin 'tpope/vim-unimpaired'             " 18 Unimpaired = complementary pairs of mappings (normal mode, linewise, etc)
  Plugin 'tpope/vim-vinegar'                " 19 Vinegar = enhances netrw to mitigate project drawer style (split window)
  Plugin 'kien/ctrlp.vim'                   " 20 CtrlP = fuzzy finder for file, buffer, mru, tag
  Plugin 'junegunn/fzf.vim'                 " 21 Fzf = general-purpose command-line fuzzy finder
  Plugin 'scrooloose/nerdtree'              " 22 NERDTree = alternative to Netrw (Vim built-in file manager)
  Plugin 'scrooloose/nerdcommenter'         " 23 NERDCommenter = Comment functions so powerful—no comment necessary
  Plugin 'mattn/emmet-vim'                  " 26 Emmet = provides support for expanding abbreviations similar to emmet
  Plugin 'csscomb/vim-csscomb'              " 29 Csscomb = configuration for auto-combing css codes
  Plugin 'jiangmiao/auto-pairs'             " 30 Auto-pairs = insert or remove brackets, parens, quotes in pair
  Plugin 'godlygeek/tabular'                " 31 Tabular = Vim script for text filtering and alignment
  Plugin 'easymotion/vim-easymotion'        " 32 EasyMotion = Vim motions on speed!
  Plugin 'rizzatti/dash.vim'                " 33 Dash.vim = search for term using Dash.app from Vim, making API lookups simple
  Plugin 'tomasr/molokai'                   " 34 Molokai color scheme for Vim
  "EVALUATION
  "Plugin 'matchit.zip'                     " 91 Matchit.zip = Extended % matching for HTML, LaTeX, and many other languages
  "Plugin 'vim-scripts/autocomplpop'        " 92 AutoComplPop = Automatically opens popup menu for completions
  "Plugin 'valloric/youcompleteme'          " 93 Youcompleteme = a code-completion engine for Vim
  "Plugin 'neoclide/coc.nvim'               " 94 Conquer of Completion = intellisense engine for Vim 8 and Neovim
  Plugin 'ryanoasis/vim-devicons'           " 97 Vim-Devicons = add icons to your plugins (always load very last one!!!)
call vundle#end()                  " All of your plugins must be added before this line

" Brief help:
" :PluginList                     - list configured plugins
" :PluginInstall                  - install plugins; append `!` to update or just :PluginUpdate
" :PluginUpdate                   - update plugins
" :PluginSearch text              - search for [text]; append `!` to refresh local cache
" :PluginClean                    - confirm removal of unused plugins; append `!` to auto-approve removal
"
" see :help vundle for more details or wiki for FAQ

filetype indent on                " Enable filetype indent -- required for Vundle
filetype plugin on                " Enable filetype plugin -- required for Vundle
" Put your non-Plugin stuff after this line
" ================================================================================

"packloadall                       " Load all plugins
"silent! helptags ALL              " Load help files for all plugins

set autoindent                    " Respect indentation when starting a new line
set autoread                      " Trigger autorea (reload) files or buffers when they are changed from outside Vim
set autowrite                     " Automatically :write before running commands
set history=50                    " Number of history lines to remember  
set noswapfile                    " Disable swap files completely        
"set tabstop=2                     " Number of spaces tab is counted for

"========================== Enable FileType Detection =========================
filetype on                       "

autocmd filetype vim setlocal ts=2 sts=2 sw=2 expandtab
autocmd filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd filetype css setlocal ts=2 sts=2 sw=2 expandtab
autocmd filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab

source $VIMRUNTIME/defaults.vim   " Get the defaults that most users want


"****************************************/ 
"                                        * 
" 02 User Interface                      *                                                                                                       
"                                        * 
"****************************************/ 

set backspace=2                   " Backspace to delete (in insert mode) (fix backspace behavior)
set cmdheight=1                   " Set height of command bar
set columns=145                   " Sets number of columns used on screen (on MacBook Air max = 150x29)
set cursorcolumn                  " Highlight current column
set cursorline                    " Highlight current line
set expandtab                     " Convert <tabs> to <spaces> (real tab character now = Ctrl-v + Tab (insert mode)) 
set foldcolumn=1                  " Add a bit extra margin to left to visualize where folds are (0..12)
autocmd BufRead * normal zR       " Keep folds open when opening files (zR)
set hidden                        " Make buffer hidden when abandoned 
set ignorecase                    " Ignore case when searching
set hlsearch                      " Highlight search results
set incsearch                     " Incremental search (make search act like search in modern browsers)
set lazyredraw                    " Don't redraw while executing macros (good performance config)
set magic                         " (For regular expressions) turn magic on
"set match=2                      " How many 1/10-second to blink when matching brackets" How many 1/10-second to blink when matching brackets
set mouse=a                       " Enable to use mouse in all mode
set noerrorbells                  " Stop that annoying beeping (no annoying sound on errors)
set novisualbell                  " No annoying sound on errors          
set number relativenumber         " Turn on relative numbering system    

set ruler                         " Show the cursor position all the time
set showcmd                       " Display incomplete command           
set showmatch                     " Show matching brackets when text indicator is over them
set smartcase                     " When searching try to be smart about cases
set scrolloff=3                   " Set at least fixed 3 lines at top and bottom screen (when moving vertically using j/k) 

set t_vs=                         " Cursor very visible (blink)
set t_vb=                         " Visual bell
set tm=500                        " Timeout after leader key
set whichwrap+=<,>,h,l            " Left/right key (h,l) to move to previous/next line when on first/last character 
set wildmenu                      " Turn on Wild menu (using <Tab> key or <C-p> and <C-n> to invoke Tab auto complete)
set wildmode=list:longest,full    " Enable autocompletion (complete till longest string, then open the wildmenu)
set wrapmargin=8                  " Set number of characters from right window border where wrapping starts

"****************************************/
"                                        *
" 03 Color and Font                      *                                                                                                       
"                                        *
"****************************************/

" You may choose:
colorscheme molokai               " Set colorscheme to monokai
"colorscheme codeblocks_dark      " Inspired by original Code::Blocks theme in a dark manner
"colorscheme desertEx
"colorscheme distinguish
"colorscheme gotham
"colorscheme ir_black
"colorscheme jellybean
"colorscheme kolor
"colorscheme molokai
"colorscheme monokai
"colorscheme neodark
"colorscheme railcasts
"colorscheme skittles_bery
"colorscheme skittles_dark
"colorscheme tango
"colorscheme vividchalk
"colorscheme wombat256

set background=dark               " Set background color to dark mode (black)
set t_Co=256                      " Enable 256 bright-colors palette in vim terminal
set encoding=utf8                 " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac              " Use Unix as the standard file type
syntax on                         " Enable syntax highlighting

"****************************************/  
"                                        *
" 04 File, Backup, and Undo              *
"                                        *
"****************************************/

" Save
"inoremap <C-s>     <C-O>:update<cr>
"nnoremap <C-s>     :update<cr>
"nnoremap <leader>s :update<cr>
"nnoremap <leader>w :update<cr>

" Quit
"inoremap <C-Q>     <esc>:q<cr>
"nnoremap <C-Q>     :q<cr>
"vnoremap <C-Q>     <esc>
"nnoremap <Leader>q :q<cr>
"nnoremap <Leader>Q :qa!<cr>

if has("vms")                               
  set nobackup                    " Turn Backup off, use versions instead 
else                                        
  set backup                      " keep a Backup file (restore to previous version)
  if has('persistent_undo')                 
    set undofile                  " keep an Undo file (undo changes after closing)
  endif                           " (this enable Persistent Undo)          
endif                                       

set noswapfile                    " Turn swap-file off
set nowritebackup                 " Do not make a backup before overwriting a file


"****************************************/
"                                        *
" 05 Text, Tab, and Indent related       * 
"                                        *
"****************************************/

set tabstop=4                     " 1 tab = 4 spaces
set softtabstop=4                 " Number of spaces that a <Tab> counts for (while editing, like inserting <Tab> or using <BS>)
set shiftwidth=2                  " Number of spaces to use for autoindent
set expandtab                     " Use spaces instead of tabs (essential in Python)
set smarttab                      " Be smart when using tabs
set showtabline=2                 " Specify when line with tab page labels will be displayed (2=always)

set ai                            " Auto indent
set lbr                           " Linebreak on 500 characters
set si                            " Smart indent
set tw=500                        " Text width = 500 characters 
set wrap                          " Wrap lines

"****************************************/                                                                                                       
"                                        *
" 06 Visual-Mode related                 * 
"                                        *
"****************************************/

" (While in Visual mode) search for current selection
"vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
"vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"****************************************/
"                                        *
" 07 Move around, Tab, Window, Buffer    * 
"                                        *                                                                                                       
"****************************************/

"map <space> /                     " Map <Space> to / (search)
"map <C-space> ?                   " Map Ctrl-<Space> to ? (backwards search)
map <silent> <leader><cr> :noh<cr> " Disable highlight when <leader><cr> is pressed

" ----------------------------------------
" ============ Tab Navigation ============
" ----------------------------------------

" Quicker movement between tabs
"nnoremap H gT                    " Move to previous tab with Shift+H
                                  "(CP: temporarily disable due to conflict with Goto H(igh) and Goto L(ow))
"nnoremap L gt                    " Move to next tab with Shift+L 
                                  "(CP: temporarily disable due to conflict with Goto H(igh) and Goto L(ow))

nnoremap ]t :tabnext<cr>
nnoremap [t :tabprev<cr>

" Useful mappings for managing Tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext<cr>

" ----------------------------------------
" ========== Window Navigation ===========
" ----------------------------------------

" Window Navigation with <Tab> and <S-Tab>. Circular windows navigation
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" Window Navigation with Ctrl-[hjkl]. Smart way to move between windows (quicker window movement)        
map <c-h> <c-w>h
map <c-j> <c-w>j                           
map <c-k> <c-w>k
map <c-l> <c-w>l

" Adjust size of split window
noremap <silent> <c-left> :vertical resize +5<cr>
noremap <silent> <c-right> :vertical resize -5<cr>
noremap <silent> <c-up> :resize +5<cr>
noremap <silent> <c-down> :resize -5<cr>

" Change 2-split window from Hertical to Korizontal and vice versa
map <leader>th <c-w>t<c-w>H       " roTate to Hertical
map <leader>tk <c-w>t<c-w>K       " roTate to Korizontal

" Remove pipes | that act as separators on splits
set fillchars+=vert:\

" ----------------------------------------
" ========= Buffer Management ============
" ----------------------------------------

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Close current buffer 
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all buffers
map <leader>ba :bufdo bd<cr>

" Goto Prev / Next buffer
map <leader>l :bnext<cr>
map <leader>h :bprev<cr>
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------
" =============== Quickfix ===============
" ----------------------------------------
nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz


"****************************************/
"                                        *
" 08 Status Line                         * 
"                                        *
"****************************************/

set laststatus=2                  " Always show status line

" Format the status line
"set statusline=\ %{HasPaste()}\%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Return true if Paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction


"****************************************/
"                                        *
" 09 Editing Mapping                     * 
"                                        *
"****************************************/

" Remap 0 to ^ (first non-blank character)
"map 0 ^


"****************************************/
"                                        *
" 10 Spell Checking and Abbreviation     * 
"                                        *
"****************************************/

ab /*{   /* ----- {{{
ab }*/   }}} ----- */


"****************************************/
"                                        *
" 11 Plugin » vundlevim/vundle.vim       * 
"                                        *
"****************************************/


"****************************************/
"                                        *
" 12 Plugin » vim-airline/vim-airline    *
"                                        *
" Tool for vim-airline user interface    * 
"****************************************/

let g:airline_powerline_fonts = 1 " Enable fancy symbols for vim-airline plugin (borrowed from vim-powerline plugin
let g:powerline_symbols="fancy"   " Enable beautiful statusline of Powerline plugin

" vim-airline
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = ' '
else
   let g:airline#extensions#tabline#left_sep = ''      " Alternate: ''
   let g:airline#extensions#tabline#left_alt_sep = ''  " Alternate: ''
endif

" powerline symbols
let g:airline_left_sep = ''             " Alternate: ''
let g:airline_left_alt_sep = ''         " Alternate: ''
let g:airline_right_sep = ''            " Alternate: ''
let g:airline_right_alt_sep = ''        " Alternate: ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''                                                                                                        
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.readonly = '🔒'   " Alternate: ''

" airline themes
"let g:airline_theme='badwolf'
"let g:airline_theme='dark'
"let g:airline_theme='kolor'
"let g:airline_theme='laederon'
let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'
"let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme=‘ubaryd'
" For complete list of airline themes, see:
" ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/

" Brief help:
" :AirlineTheme {theme-name}      - display (no argument) or change (+ argument) current theme
" :AirlineToggleWhitespace        - (toggle) whitespace detection
" :AirlineToggle                  - (toggles) ‘statusline' (between standard  and airline)
" :AirlineRefresh                 - refreshes all highlight groups and redraws ‘statusline’
" :AirlineExtensions              - shows status of all available airline extensions












