if exists('g:loaded_trc') && g:loaded_trc
    finish
endif

let g:loaded_trc = v:true

let g:trc_server_endpoint = "ws://127.0.0.1:8080"
