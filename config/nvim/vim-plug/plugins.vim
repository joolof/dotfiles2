"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " wal vim
    Plug 'dylanaraps/wal.vim'

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
   
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
   
    " Goyo
    Plug 'junegunn/goyo.vim'
    
    " Commenting stuff
    Plug 'tpope/vim-commentary'
    
    " Ultisnips
    Plug 'SirVer/ultisnips'
   
    " Floating terminal
    Plug 'voldikss/vim-floaterm'

    " Gitgutter
    Plug 'airblade/vim-gitgutter'
    
    " Gutentages
    Plug 'ludovicchabant/vim-gutentags'

    " Surround to delete surrounding ()
    Plug 'tpope/vim-surround'

    " Vimwiki
    Plug 'vimwiki/vimwiki'

    " Autoclose parenthesis and stuff
    Plug 'Townk/vim-autoclose'

    " which-key
    Plug 'liuchengxu/vim-which-key'

    " startify
    Plug 'mhinz/vim-startify'

    " vifm
    Plug 'vifm/vifm.vim'

    Plug 'erietz/vim-terminator', { 'branch': 'main'}

    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }"

    " Coc
    " Plug 'neoclide/coc.nvim', {'branch': 'release'} 

    " Dispatch
    " Plug 'tpope/vim-dispatch'
call plug#end()
