function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

call SourceIfExists("~/.vim/pcontrol.vim")

set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable
set autoindent
set cindent
set nu
set ts=4
set shiftwidth=4

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" set laststatus=2

if !has('gui_running')
	set t_Co=256
endif

set noshowmode
let mapleader=","
set mouse=a
set hlsearch
set backspace=2
set cursorline
set cursorcolumn
set ignorecase
set expandtab
" autocmd BufWritePost *.py execute ':!black -q %:p'

" shortcut configuration

nnoremap <leader>e :enew<Enter>        
nnoremap <leader>q :bprevious!<Enter> 
nnoremap <leader>r :bnext!<Enter>       
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

" airline configuration

let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1     
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline_theme='light'
let g:airline_powerline_fonts=1

let g:airline_section_y = 'BN: %{bufnr("%")}'
