"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

call plug#begin('~/.nvim/plugged')
  "Plug 'gmarik/Vundle.vim'
  Plug 'tpope/vim-fugitive'
  "Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-speeddating'

  " show color in background of rgb/hexa
  Plug 'ap/vim-css-color'

  " allow % to work between html tags
  Plug 'matchit.zip'

  " comment method and so on with one keystroke
  Plug 'tComment'

  " no more tab press after hitting o
  Plug 'sickill/vim-pasta'

  " open files easily
  Plug 'ctrlp.vim'

  " show undo tree
  Plug 'simnalamburt/vim-mundo'

  " write a page of HTML with few keystrokes
  "Plug 'tristen/vim-sparkup'

  " smartly handle swapfiles
  "Plug 'gioele/vim-autoswap'

  " move visual blocks
  "Plug 'shinokada/dragvisuals.vim'

  " smart autocompletion
  Plug 'Valloric/YouCompleteMe'

  " Snippets
  " Track the engine.
  Plug 'sirver/ultisnips'
  " Snippets are separated from the engine
  "Plug 'honza/vim-snippets'

  "
  Plug 'BriceSD/hlnext'

  " Distraction-free writing in Vim
  Plug 'junegunn/goyo.vim'

  " note taking, emacs' orgmode like
  Plug 'jceb/vim-orgmode'

  " highlight adjectives, passive language and weasel words
  "Plug 'jamestomasino/vim-writingsyntax'

  " provides facilities to integrate Vim with the pandoc document converter and
  " work with documents written in its markdown variant
  " and it's syntax highlighting
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'

  " shows a git diff in the 'gutter' (sign column)
  Plug 'airblade/vim-gitgutter'

  " proper syntax highligting for .tmux.conf
  "Plug 'tmux-plugins/vim-tmux'

  " display a table with all 256 colors usable in terminal
  Plug 'guns/xterm-color-table.vim'

  " Show syntax highlighting groups for word under cursor
  Plug 'gerw/vim-HiLinkTrace'

  " Give a visual aid to navigate marks, by displaying them as signs (obviously needs the +signs feature).
  Plug 'vim-scripts/ShowMarks'

  " check syntax
  Plug 'scrooloose/syntastic'
call plug#end()

source ~/.vimrc.jeop
"set encoding=utf-8

if has("autocmd")
  autocmd! bufwritepost .nvimrc source ~/.nvimrc
endif

syntax on                         " show syntax highlighting
set nocompatible                  " don't need to be compatible with old vim
set ts=2                          " set indent to 2 spaces
set list                          " Shows invisible characters
set listchars=tab:▸\ ,eol:¬
set autoread                      "Always reload buffer when external changes detected
set t_Co=256
set shiftwidth=2
set noautoindent                  " auto indent
set nosmartindent                 " more inteligent auto-indenting
set mousehide                     " hide the mouse when typing
set expandtab                     " use spaces, not tab characters
set smarttab                      " tab and backspace are smart
set backspace=indent,eol,start    " backspace over all kinds of things
set relativenumber                " show relative line numbers
set number                        " and the number of current line
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set linebreak                     " wrap at 'breakat' instead of last char
set virtualedit=block             " Let cursor move past the last char in <C-V> mode
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set cmdheight=1					          " command line two lines high
set updatecount=100				        " flush file to disk every 100 chars
"set complete=.,w,b,u,U,t,i,d	    " do lots of scanning on tab completion ||
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set nofoldenable                  " disable code folding
set clipboard+=unnamedplus        " use the system clipboard
set wildmode=list:longest,full    " Show list of completions
                                  "  and complete as much as possible,
                                  "  then iterate full completions
set wildmenu
set infercase                     " Adjust completions to match case
set showcmd                       " Show (partial) command in status line (the one we are typing)
set magic                         " Enable the 'magic' (see \v and \V while searching regex)"
set noerrorbells                  " no error bells please
set novisualbell                  " Disable ALL bells
set title titlestring=            " Show filename in titlebar of window
set formatprg=par\ -w80           " use Par to justify texts (width of 80), need to install par manually
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " use true color in nvim
runtime macros/matchit.vim        " use % to jump between start/end of methods

filetype on						            " Enable filetype detection
filetype indent on				        " Enable filetype-specific indenting
filetype plugin on				        " Enable filetype-specific plugins

" set pandoc's markdown syntax
augroup pandoc_syntax
    au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc
augroup END
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
au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12

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

" Y yanks from cursor to $
map Y y$

" If I forgot to sudo vim a file, do that with :w!!
cmap w!! %!sudo tee > /dev/null %

" Showmarks
let showmarks_include = "abcdefghijklmnopqrstuvwxyABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
" For marks a-z
highlight ShowMarksHLl gui=bold ctermbg=LightBlue ctermfg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold ctermbg=LightRed ctermfg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold ctermbg=LightYellow ctermfg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold ctermbg=LightGreen ctermfg=DarkGreen

" Gitgutter settings
let g:gitgutter_realtime=1

" Gundo settings
noremap <F7> :GundoToggle<cr>

" Toggle Goyo
noremap <F3> :Goyo<cr>

" Enable persistent undo so that undo history persists across vim sessions
set undodir=~/.tmp/nvim/undo
set undofile

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

" Restore last cursor position in file
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

"====[ I'm sick of typing :%s/.../.../g ]=======
nmap K    :%s//g<LEFT><LEFT>
vmap K    :B s//g<LEFT><LEFT>

"Delete in normal mode to switch off highlighting till next search
nmap <silent> <BS>  :call HLNextOff() <BAR> :nohlsearch <BAR> <CR>
":call VG_Show_CursorColumn('off')<CR>

"Double-delete to remove trailing whitespace...
"[Remove trailing whitespace]
nmap <silent> <BS><BS>   mz:call TrimTrailingWS()<CR>`z

function! TrimTrailingWS ()
  if search('\s\+$', 'cnw')
    :%s/\s\+$//g
  endif
endfunction

"=====[ Highlight matches when jumping to next ]=============

" This rewires n and N to do the highlighing...
"nnoremap <silent> n   n:call HLNext(0.4)<cr>
"nnoremap <silent> N   N:call HLNext(0.4)<cr>

" OR ELSE ring the match in red...
"function! HLNext (blinktime)
"   highlight RedOnRed ctermfg=red ctermbg=red
"   let [bufnum, lnum, col, off] = getpos('.')
"   let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
"   echo matchlen
"   let ring_pat = (lnum > 1 ? '\%'.(lnum-1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '')
"           \ . '\%'.lnum.'l\%>'.max([col-4,1]) .'v\%<'.col.'v.'
"           \ . '\|'
"           \ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1]) .'v\%<'.(col+matchlen+3).'v.'
"           \ . '\|'
"           \ . '\%'.(lnum+1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.'
"   let ring = matchadd('RedOnRed', ring_pat, 101)
"   redraw
"   exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
"   call matchdelete(ring)
"   redraw
"endfunction

"======[ Magically build interim directories if necessary ]===================

function! AskQuit (msg, options, quit_option)
  if confirm(a:msg, a:options) == a:quit_option
    exit
    endif
endfunction

function! EnsureDirExists ()
  let required_dir = expand("%:h")
  if !isdirectory(required_dir)
    call AskQuit("Parent directory '" . required_dir .  "' doesn't exist.",
          \       "&Create it\nor &Quit?", 2)
    try
      call mkdir( required_dir, 'p' )
    catch
      call AskQuit("Can't create '" . required_dir . "'",
          \            "&Quit\nor &Continue anyway?", 1)
      endtry
  endif
endfunction

augroup AutoMkdir
    autocmd!
    autocmd  BufNewFile  *  :call EnsureDirExists()
augroup END

"=====[ Make Visual modes work better ]==================

" Visual Block mode is far more useful that Visual mode (so swap the commands)...
nnoremap v <C-V>
nnoremap <C-V> v

vnoremap v <C-V>
vnoremap <C-V> v

" Use the repeat operator with a visual selection
" This is useful for performing an edit on a single line, then highlighting a
" visual block on a number of lines to repeat the edit.
vnoremap <leader>. :normal .<cr>

" Repeat a macro on a visual selection of lines
" Same as above but with a macro; complete the command by chosing the register
" containing the macro.
vnoremap <leader>@ :normal @

"Square up visual selections...
set virtualedit=block

" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x

" Make vaa select the entire file...
vmap aa VGo1G

"=====[ Make arrow keys move visual blocks around ]======================
" Not working because of dependencies
"runtime plugin/dragvisuals.vim

"vmap  <expr>  <LEFT>   DVB_Drag('left')
"vmap  <expr>  <RIGHT>  DVB_Drag('right')
"vmap  <expr>  <DOWN>   DVB_Drag('down')
"vmap  <expr>  <UP>     DVB_Drag('up')
"vmap  <expr>  D        DVB_Duplicate()
"vmap  <expr>  <C-D>    DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
"let g:DVB_TrimWS = 1


"===================[ Ultisnips and YouCompleteMe ]============================
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Turn on omni-completion
set omnifunc=syntaxcomplete#Complete

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

let g:ycm_filetype_whitelist = { '*': 1}
let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'unite' : 1,
        \ 'vimwiki' : 1,
        \ 'infolog' : 1,
        \}
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_min_num_of_chars_for_completion = 2

" set the form of popup
set completeopt=longest,menuone


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Pandoc module                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
