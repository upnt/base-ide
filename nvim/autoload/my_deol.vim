function! my_deol#options() abort
    let g:deol#custom_map = {
                \ 'edit': 'e',
                \ 'start_insert': 'i',
                \ 'start_insert_first': 'I',
                \ 'start_append': 'a',
                \ 'start_append_last': 'A',
                \ 'execute_line': '<CR>',
                \ 'previous_prompt': '<C-p>',
                \ 'next_prompt': '<C-n>',
                \ 'paste_prompt': '<C-y>',
                \ 'bg': '<C-z>',
                \ 'quit': 'q',
                \ }

    let g:deol#extra_options = {
                \'term_finish': 'close',
                \'split': 'floating'
                \ }
	let g:deol#prompt_pattern = '% \|%$'
endfunction
