""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"create a new tab with Tab-n
map <tab>n : tabnew<cr>
"move to next tab with double tabs
map <tab><tab> : tabnext<cr>
"move to previous tab with Shift-tab
map <S-tab> : tabprevious<cr>
"duplicate current tab with Tab-t
map <tab>t :tab split<Cr>

"enable click tabs on mouse (n : normal mode, please type ':help mouse' to reference others )
set mouse=nv


