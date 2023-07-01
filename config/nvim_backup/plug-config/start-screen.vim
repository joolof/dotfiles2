let g:startify_custom_header = [
        \ '  __   __  _______  __   __  _______ ',
        \ ' |  | |  ||       ||  |_|  ||       |',
        \ ' |  |_|  ||   _   ||       ||    ___|',
        \ ' |       ||  | |  ||       ||   |___ ',
        \ ' |       ||  |_|  ||       ||    ___|',
        \ ' |   _   ||       || ||_|| ||   |___ ',
        \ ' |__| |__||_______||_|   |_||_______|',
        \]


let g:startify_session_dir = '~/.dotfiles/config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.dotfiles/config/nvim/init.vim' },
            \ { 'p': '~/.dotfiles/config/polybar/config' },
            \ { 't': '~/Desktop/tmp' },
            \ { 'z': '~/.zshrc' },
            \ { 'a': '~/.bash_aliases' },
            \ { 'x': '~/.dotfiles/Xresources' },
            \ { 'b': '~/.dotfiles/config/bspwm/bspwmrc' },
            \ { 's': '~/.dotfiles/config/sxhkd/sxhkdrc' },
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 0
let g:startify_enable_special = 0

