if exists("b:did_ftplugin")
	finish
endif

let b:did_ftplugin = 1

let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^fact$']
let g:clojure_fuzzy_indent_blacklist = ['^with-meta$', '-fn$']

let g:clojure_conceal_extras = 1
