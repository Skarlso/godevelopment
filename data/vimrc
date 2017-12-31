" ./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp
" --enable-python3interp --with-python3-config-dir=/usr/local/Cellar/python3/
set nocompatible              " be iMproved, required
filetype off                  " required
set shell=bash\ -l
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

set backspace=2
set incsearch
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
" " set runtimepath^=~/.vim/bundle/ctrlp.vim
set mouse=a
set cf clipboard+=unnamed
set textwidth=130 colorcolumn=131,132,133,134,135,136,137,138,139,140,141
set rtp+=/usr/local/opt/fzf
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'rodjek/vim-puppet'
Bundle 'vim-ruby/vim-ruby'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'keitanakamura/neodark.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rip-rip/clang_complete'
Plugin 'junegunn/fzf.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'ludovicchabant/vim-gutentags'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" " When vim ecounters a rb file, switch to two tabs.
filetype plugin on
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab

" " Nerdtree, vim-go settings
let g:nerdtree_tabs_open_on_console_startup=0
let g:go_highlight_functions = 1
let g:go_ighlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
" " Apperance settings: line number, highlight search color and tags.
set number
set hlsearch
" " set t_Co=256
set completeopt-=preview
set tags=./.tags;,~/.vimtags;./tags
let g:gruvbox_contrast_dark = "soft"
" " set termguicolors
let macvim_skip_colorscheme=1
let g:tender_lightline = 1
let g:onedark_termcolors = 16
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" " Schema and colors
syntax on
" " set background=dark
colorscheme one
" " colorscheme one
let g:airline_theme='one'
let g:lightline = {}
let g:lightline.colorscheme = 'one'
" " let g:neodark#background = '#202020'

" " Enabling Ruby extension.
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" " Key mappings
nmap <F8> :TagbarToggle<CR>
nmap <F10> :UpdateTags<CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <F7> :tabnew<CR>
nmap <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
nmap <F5> :lclose
nmap <Leader>1 1gt
nmap <Leader>2 2gt
nmap <Leader>3 3gt
nmap <Leader>4 4gt
nmap <Leader>5 5gt
nmap <Leader>6 6gt
nmap <Leader>7 7gt
nmap <Leader>8 8gt
nmap <Leader>9 9gt
nmap <Leader>0 :tablast<CR>
nmap <Leader>g :GoBuild<CR>
map <Leader>m :CtrlPModified<CR>
map <Leader>M :CtrlPBranch<CR>
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" noremap (only normal mode)
nnoremap <leader>l        :set list!<CR>
nnoremap t[               :tabprevious<CR>
nnoremap t]               :tabnext<CR>
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
map <c-a> :w<CR>
nmap <Leader>n :NERDTreeFind<CR>
map <leader>h :set hlsearch!<cr>
nmap <Leader>gb :Gblame<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-p> :FZF<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" " LightLine config
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"!":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
" " noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
" " noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
" " noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 1)<CR>
" " noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 1)<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
" " imap <Tab> <Plug>snipMateNextOrTrigger
" [Files] Extra options for fzf
"   e.g. File preview using Highlight
"        (http://www.andre-simon.de/doku/highlight/en/highlight.html)
let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
" Notices .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
