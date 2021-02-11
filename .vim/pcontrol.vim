" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo

    " Plugin 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!'}

    " Plugin 'wincent/command-t'

    Plugin 'vim-airline/vim-airline'

    Plugin 'vim-airline/vim-airline-themes'

    Plugin 'scrooloose/nerdtree'

call vundle#end()            " required

" set the runtime path to include vim-plug and initialize

if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

    " fzf plugin
    Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }

    " ale plugin
    " Plug 'dense-analysis/ale'

    " deoplete plugin
    " Plug 'Shougo/deoplete.nvim'
    "
    " Plug 'roxma/nvim-yarp'
    "
    " Plug 'roxma/vim-hug-neovim-rpc'
    "

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on    " required

