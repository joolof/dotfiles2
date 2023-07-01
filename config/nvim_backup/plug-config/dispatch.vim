nnoremap <C-b> :call <SID>compile_and_run()<CR>

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'python'
        "exec "AsyncRun! gcc % -o %<; time ./%<"
        exec "Dispatch python3 %"
    "elseif &filetype == 'cpp'
       "exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    "elseif &filetype == 'java'
       "exec "AsyncRun! javac %; time java %<"
    "elseif &filetype == 'sh'
       "exec "AsyncRun! time bash %"
    "elseif &filetype == 'python'
       "exec "AsyncRun! time ipython %"
    elseif &filetype == 'tex'
        exec "Dispatch! latexmk -pdf %"
    endif
endfunction

