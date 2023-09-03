call plug#begin()

Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

call plug#end()

map  <C-Right> :tabn<CR>
map  <C-l> :tabn<CR>
map  <C-Left> :tabp<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

set number rnu

