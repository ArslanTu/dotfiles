" ENVVAR---{{{
let GITHUB_PROXY='https://ghp.arslantu.xyz/'
"}}}
" VUNDLE---{{{
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
Plugin GITHUB_PROXY . 'https://github.com/VundleVim/Vundle.vim'
Plugin GITHUB_PROXY . 'https://github.com/preservim/nerdtree'
Plugin GITHUB_PROXY . 'https://github.com/vim-airline/vim-airline'
Plugin GITHUB_PROXY . 'https://github.com/vim-airline/vim-airline-themes'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}}}
" BASIC---{{{
set termguicolors " make catppuccin better
set relativenumber " display line number
set cursorline " highlight current line
set ruler
set nocompatible " Disable compatibility with vi which can cause unexpected issues.

set autoindent
set expandtab " use space to replace tab
set tabstop=4 " tab = 4 space
set shiftwidth=4 " indent

syntax on " Turn syntax highlighting on.

set incsearch " While searching though a file incrementally highlight matching characters as you type.
set showcmd " Show partial command you type in the last line of the screen.
set showmode " Show the mode you are on the last line.
set showmatch " Show matching words during a search.
set hlsearch " Use highlighting when doing a search.
set history=1000 " Set the commands to save in history default number is 20.

set wildmenu " Enable auto completion menu after pressing TAB.
set wildmode=list:longest " Make wildmenu behave like similar to Bash completion.
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}
" STATUS LINE ---{{{
" Status bar code goes here.
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ row:%l\ col:%c

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
" }}}
" MAPPINGS ---{{{
" Mappings code goes here.
inoremap jj <esc>
nnoremap Y y$

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>
" }}}
" PLUGINS ---{{{
" Plugin config goes here.

" NERDTREE---{{{
" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" show hidden files
let NERDTreeShowHidden=1
" show lines of files
let g:NERDTreeFileLines = 1
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
" }}}

" AIRLINE---{{{
let g:airline_theme='catppuccin_macchiato'
let g:airline_powerline_fonts=1
" }}}

" }}}
" VIMSCRIPT ---{{{
" This will enable code folding.
" Use the marker method of folding.
augroup fold_vim_file
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" More Vimscripts code goes here.

" }}}
