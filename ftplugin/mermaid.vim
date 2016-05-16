if exists("g:loaded_mermaid_plugin")
    finish
endif
let g:loaded_mermaid_plugin = 1

if !exists("g:mermaid_executable_script")
	let g:mermaid_executable_script="mermaid"
endif

autocmd Filetype mermaid let &l:makeprg=g:mermaid_executable_script . " " .  fnameescape(expand("%"))

