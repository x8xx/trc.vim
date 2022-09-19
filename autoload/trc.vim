function! trc#Trc() abort
    echo "Start TRC mode:"
    while 1
        let c = getcharstr()
        if c == 'q'
            redraw
            echo "Exit TRC mode"
            break
        elseif c == 'p'
            echo denops#request('trc', 'checkTweetDeckConnection', '[]')
        elseif c == 'r'
            echo denops#request('trc', 'reconnect', '[]')
        elseif c == 'h'
            call denops#request('trc', 'lscroll', '[]')
        elseif c == 'l'
            call denops#request('trc', 'rscroll', '[]')
        endif
    endwhile
endfunction
