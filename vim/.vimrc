set noerrorbells
set hidden
set relativenumber
set nu
set nohlsearch
set noswapfile
set nobackup
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=10
set nowrap
set incsearch
set colorcolumn=80
set nrformats-=octal
set bg=dark
set signcolumn="yes"
set cursorline

colorscheme gruvbox
syntax on

if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

let mapleader = " "

nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Leader>f :%s/\<\|\>\@!\s\|\n//g<CR>
nnoremap <Leader>r :s/
nnoremap <Leader>ra :%s/
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> [b :bp<CR>
nnoremap <silent> ]b :bp<CR>

fun! TrimWhitespace()
	    let l:save = winsaveview()
	        keeppatterns %s/\s\+$//e
		    call winrestview(l:save)
endfun

augroup PERSONAL_ACS
	    autocmd!
	        autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Use actual tabs for make files
fun! SetMakefileOptions()
    if &filetype == 'make'
        setlocal noexpandtab
        setlocal tabstop=4
        setlocal shiftwidth=4
    endif
endfun

augroup makefile_settings
    autocmd!
        autocmd FileType make call SetMakefileOptions()
augroup END

" COC Configuration
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" " use <tab> for trigger completion and navigate to the next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
"
" inoremap <silent><expr> <Tab>
" 	\ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()
"
