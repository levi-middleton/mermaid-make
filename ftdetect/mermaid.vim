if did_filetype()
	  finish
endif

autocmd BufRead,BufNewFile * :if getline(1) =~ '^%% mermaid$'| setfiletype mermaid | set filetype=mermaid | endif
autocmd BufRead,BufNewFile *.mmd,*.mermaid setfiletype mermaid | set filetype=mermaid
