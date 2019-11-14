"match ErrorMsg '\%>80v.\+'
match ErrorMsg '\s\+$' " this doesn't work for some reason

:set colorcolumn=80
:highlight colorcolumn ctermbg=1
