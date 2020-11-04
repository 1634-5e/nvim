call plug#begin('~/.local/share/nvim/site/plugged')

"terminal
Plug 'skywind3000/vim-terminal-help'

"fzf
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

"airline
Plug 'vim-airline/vim-airline'

"numbers
Plug 'myusuf3/numbers.vim'

"nerdcommenter
Plug 'preservim/nerdcommenter'

"barbaric
Plug 'rlue/vim-barbaric'

"onedark
Plug 'joshdick/onedark.vim'

"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"neovim plugin for ranger
Plug 'kevinhwang91/rnvimr'

"vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

""ale
"Plug 'dense-analysis/ale'

call plug#end()


"vim-go
let g:go_fmt_command = "goimports"
let g:go_textobj_include_function_doc = 1


au FileType go nmap <silent> [g :cprevious<CR> 
au FileType go nmap <silent> ]g :cnext<CR> 
au FileType go nmap <leader>r :GoRun %<CR> 
au FileType go set autowrite
au FileType go nmap <leader>b :GoBuild<CR> 
au FileType go nmap <leader>n :GoRename 

"fzf
nmap <leader>z :Files<CR>

""Rnvimr 
nnoremap <silent> <leader>o :RnvimrToggle<CR>

"markdown preview 
let g:mkdp_aotu_start = 0
let g:mkdp_aotu_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '127.0.0.1'
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_browserfunc = ''
"autoclose affects Preview but not Toggle
"nmap <leader>s <Plug>MarkdownPreview
"nmap <leader><S-s> <Plug>MarkdownPreviewStop
"nmap <leader>p <Plug>MarkdownPreviewToggle
nmap <leader>p <Plug>MarkdownPreview



"custom
xnoremap < <gv
xnoremap > >gv

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

nnoremap <leader>q :noh<CR>

"highlight CursorLine cterm=NONE ctermbg=59
highlight CursorLine cterm=NONE ctermbg=000000 ctermfg=255

colorscheme onedark

set nobackup
set nowritebackup
set updatetime=3000
set shortmess+=c



"coc
"au InsertLeave * :call CocAction('format') "auto format
nnoremap <leader>f :call CocAction('format')<CR>

nmap <leader>e :CocCommand explorer<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <C-j> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

