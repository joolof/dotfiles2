let mapleader = " "
" set t_Co=256 
" --------------------------------------------------------------------------------
" General behavior
" --------------------------------------------------------------------------------
syntax enable               " syntax highlighting
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set backspace=indent,eol,start " make backspaces more powerful
set number relativenumber
set numberwidth=6
set noshowmode
set laststatus=2
set wrap
set textwidth=0 wrapmargin=0
set display+=lastline
set scrolloff=5
set autochdir
set hidden
"set cursorline
"set ruler                           " show line and column number
"set showcmd             " show (partial) command in status line
set autoread
set fillchars+=vert:│
" --------------------------------------------------------------------------------
" Configure expanding of tabs for various file types
" --------------------------------------------------------------------------------
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
" --------------------------------------------------------------------------------
" Search settings
" --------------------------------------------------------------------------------
set incsearch           " search as characters are entered
set ignorecase
set nohlsearch
" --------------------------------------------------------------------------------
" For finding files more easily
" --------------------------------------------------------------------------------
set path+=**
set wildmenu
set wildignore+=*.o,*.aux,*.fls,*.out,*.blg,.git,*.pyc " Ignore these files when completing
" --------------------------------------------------------------------------------
" Jump to last known position
" --------------------------------------------------------------------------------
augroup vimrcEx
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
  autocmd BufRead,BufNewFile aliases.local,zshrc.local,*/zsh/configs/* set filetype=sh
  autocmd BufRead,BufNewFile gitconfig.local set filetype=gitconfig
  autocmd BufRead,BufNewFile tmux.conf.local set filetype=tmux
  autocmd BufRead,BufNewFile vimrc.local set filetype=vim
augroup END
" --------------------------------------------------------------------------------
" Some mail stuff that are being ignored otheriwse
" --------------------------------------------------------------------------------
autocmd FileType mail set fo-=t
autocmd FileType mail set tw=0
" --------------------------------------------------------------------------------
" Insert some spaces at the top of the email
" --------------------------------------------------------------------------------
function! IsReply()
    if line('$') > 1
        :g/^>\s\=--\s\=$/,$ delete
        :%!par w72q
        :%s/^.\+\ze\n\(>*$\)\@!/\0 /e
        :%s/^>*\zs\s\+$//e
        :1
        :put! =\"\n\n\"
        :1
    endif
endfunction

augroup mail_filetype
    autocmd!
    autocmd VimEnter /tmp/neomutt* :call IsReply()
augroup END
