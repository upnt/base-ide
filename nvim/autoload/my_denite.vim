function! my_denite#options() abort
let s:denite_win_width_percent = 0.85
let s:denite_win_height_percent = 0.7

call denite#custom#option('default', {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ })
endfunction

function! my_denite#mappings() abort
    nnoremap <silent><buffer><expr> l
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
    \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
    \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
    \ denite#do_map('toggle_select').'j'
    nnoremap <silent><buffer><expr> o
    \ denite#do_map('toggle_select_all')
    " for denite-git
    nnoremap <silent><buffer><expr> a
    \ denite#do_map('do_action', 'add')
    nnoremap <silent><buffer><expr> c
    \ denite#do_map('do_action', 'commit')
endfunction

function! my_denite#openings() abort
    nnoremap <silent> <Leader>df
    \ :Denite file/rec<CR>
    nnoremap <silent> <Leader>dc
    \ :Denite change<CR>
    nnoremap <silent> <Leader>cs
    \ :Denite colorscheme<CR>
endfunction
