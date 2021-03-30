call plug#begin('~/.local/share/nvim/site/plugged')

"leetcode
Plug 'ianding1/leetcode.vim'

"visual-multi
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }

"surround
Plug 'tpope/vim-surround'

"lua-surround
"Plug 'blackcauldron7/surround.nvim'

"airline
"Plug 'vim-airline/vim-airline'

"galaxyline
Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'

"smooth-scroll
Plug 'cossonleo/neo-smooth-scroll.nvim'

"numbers
Plug 'myusuf3/numbers.vim'

"nerdcommenter
Plug 'preservim/nerdcommenter'

"wildfire
Plug 'gcmt/wildfire.vim', { 'on': ['<Plug>(wildfire-fuel)', '<Plug>(wildfire-water'] }

"coc
"Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile', 'branch': 'release' }

"neovim plugin for ranger
Plug 'kevinhwang91/rnvimr'

"vim-go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }

"fzf
Plug 'junegunn/fzf.vim'

"lua-fzf
"Plug 'vijaymarupudi/nvim-fzf'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'md' }

"onedark
Plug 'joshdick/onedark.vim'

"fcitx.vim
"Plug 'vim-scripts/fcitx.vim'

"terminal
"Plug 'skywind3000/vim-terminal-help'

"barbaric
"Plug 'rlue/vim-barbaric'

call plug#end()

"leetcode
let g:leetcode_browser='firefox'
let g:leetcode_china=1
let g:leetcode_solution_filetype='python3'
let g:leetcode_hide_paid_only=1


"wildfire
map <SPACE> <Plug>(wildfire-fuel)
vmap <C-SPACE> <Plug>(wildfire-water)

"NERDCommenter
nmap [count]<leader>cc <Plug>(NERDCommenterComment)
nmap [count]<leader>cu <Plug>(NERDCommenterUncomment)

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
"inoremap <S-Right> :CocCommand rime.disable<CR>

nnoremap q :q<CR>
nnoremap Q :q!<CR>
nnoremap P "+p
vnoremap P "+p
nnoremap Y "+y
vnoremap Y "+y
nnoremap W :w<CR>

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



""coc
""au InsertLeave * :call CocAction('format') "auto format
"nnoremap <leader>f :call CocAction('format')<CR>

"nmap <leader>e :CocCommand explorer<CR>

"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gr <Plug>(coc-references)

"nnoremap <silent> K :call <SID>show_documentation()<CR>
"function! s:show_documentation()
	"if (index(['vim','help'], &filetype) >= 0)
		"execute 'h '.expand('<cword>')
	"else
		"call CocAction('doHover')
	"endif
"endfunction

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"inoremap <expr> <C-j> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)



require('init.lua')
