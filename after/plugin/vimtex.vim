if has('mac')
    let g:vimtex_view_method = 'skim'  " use skim as pdf viewer
else  " Ubuntu
    let g:vimtex_view_general_viewer = 'evince'  " use evince as pdf viewer
endif

let g:vimtex_complete_enabled = 0  " use texlab for completion
let g:vimtex_quickfix_autoclose_after_keystrokes = 2  " autoclose quickfix window after 2 keystrokes
