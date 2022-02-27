" auto-install-vim-plug
if empty(glob('~/.dconfig/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Treesitter instead of polyglot
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	"Auto pairs 
	Plug 'jiangmiao/auto-pairs'
	" Onedark theme
	Plug 'joshdick/onedark.vim'
	" Stable version of coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Keeping up to date with master
	Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	"Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-commentary'
	"fuzzy
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	"Which key
	Plug 'liuchengxu/vim-which-key'
	"Scope, sneak
	Plug 'unblevable/quick-scope'
	Plug 'justinmk/vim-sneak'
	"Snippets
	Plug 'honza/vim-snippets'

	"File Explorer
	" Plug 'scrooloose/NERDTree'

	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	call plug#end()
