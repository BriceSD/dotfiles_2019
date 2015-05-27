" .nvimrc
source ~/.vimrc.jeop
set encoding=utf-8
if has("autocmd")
  autocmd! bufwritepost .nvimrc source ~/.nvimrc
endif

syntax on                         " show syntax highlighting
filetype plugin indent on
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set expandtab                     " use spaces, not tab characters
set nocompatible                  " don't need to be compatible with old vim
set relativenumber                " show relative line numbers
set number                        " and the number of current line
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set virtualedit=block             " Let cursor move past the last char in <C-V> mode
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set nofoldenable                  " disable code folding
set clipboard+=unnamedplus        " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set showcmd                       " Show (partial) command in status line.
set nocompatible
set mousehide                     " hide mouse when keyboard is use
set formatprg=par\ -w80           " use Par to justify texts (width of 80), need to install par manually
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " use true color in nvim
runtime macros/matchit.vim        " use % to jump between start/end of methods


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
" colorscheme myNvimScheme
colorscheme base16-railscasts
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
"highlight Normal ctermbg=#2B2B2B ctermfg=#A9B7C6

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Synstastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" scrooloose/syntastic settings
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol ="▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = \"passive"
augroup END

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Utility
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" escape to exit terminal mode and enter in normal mode
tnoremap <Esc> <C-\><C-n>

" navigate between windows
tnoremap <A-c> <C-\><C-n><C-w>h
tnoremap <A-t> <C-\><C-n><C-w>j
tnoremap <A-s> <C-\><C-n><C-w>k
tnoremap <A-r> <C-\><C-n><C-w>l
nnoremap <A-c> <C-w>h
nnoremap <A-t> <C-w>j
nnoremap <A-s> <C-w>k
nnoremap <A-r> <C-w>l

" Use the repeat operator with a visual selection
" This is useful for performing an edit on a single line, then highlighting a
" visual block on a number of lines to repeat the edit.
vnoremap <leader>. :normal .<cr>

" Repeat a macro on a visual selection of lines
" Same as above but with a macro; complete the command by chosing the register
" containing the macro.
vnoremap <leader>@ :normal @

" Gitgutter settings
let g:gitgutter_realtime=1

" Gundo settings
nnoremap <F7> :GundoToggle<cr>
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" multi-purpose tab key (auto-complete)
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

" Restore last cursor position in file
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off
" set Runtime path to inc Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
"begin the Vundle Plugin Opperation
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'tpope/vim-fugitive'

  " show color in background of rgb/hexa
  Plugin 'ap/vim-css-color'
  " syncronize vim's and tmux's status bar colors
  " doesn't work correctly with nvim
  "Plugin 'edkolev/tmuxline.vim'

  " smarter tab proposition
  Plugin 'ervandew/supertab'

  " allow % to work between html tags
  Plugin 'matchit.zip'

  " comment method and so on with one keystroke
  Plugin 'tComment'

  " no more tab press after hitting o
  Plugin 'sickill/vim-pasta'

  " open files easily
  Plugin 'ctrlp.vim'

  " show undo tree
  Plugin 'simnalamburt/vim-mundo'

  " write a page of HTML with few keystrokes
  Plugin 'tristen/vim-sparkup'

  " vim status bar
 " Plugin 'bling/vim-airline'

  " shows a git diff in the 'gutter' (sign column)
  Plugin 'airblade/vim-gitgutter'

  " proper syntax highligting for .tmux.conf
  Plugin 'tmux-plugins/vim-tmux'

  " display a table with all 256 colors usable in terminal
  Plugin 'guns/xterm-color-table.vim'

  " Show syntax highlighting groups for word under cursor
  Plugin 'gerw/vim-HiLinkTrace'

  " check syntax
  Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on
