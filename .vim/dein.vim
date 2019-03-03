if &compatible
	set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

	"call dein#add('Shougo/neocomplcache-snippets-complete')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Shougo/neocomplete')
	"call dein#add('Shougo/neosnippet')
	"call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/unite.vim')
	call dein#add('Shougo/vimproc.vim', {'build': 'make'})
	call dein#add('Shougo/vimshell.vim')

	call dein#add('cohama/lexima.vim')
	call dein#add('h1mesuke/unite-outline')
	call dein#add('petdance/vim-perl')
	call dein#add('rking/ag.vim')
	call dein#add('scrooloose/nerdtree')
	call dein#add('szw/vim-tags')
	call dein#add('thinca/vim-quickrun')
	call dein#add('tpope/vim-fugitive')
	call dein#add('tyru/current-func-info.vim')
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-scripts/taglist.vim')
	call dein#add('tpope/vim-fugitive')
	"NeoBundle 'hotchpotch/perldoc-vim'
	"  "-----------------------------------------
	"  "colorscheme
	"  "-----------------------------------------
	call dein#add('romainl/Apprentice')
	call dein#add('jacoborus/tender.vim')
	call dein#add('Haron-Prime/Antares')
	call dein#add('jacoborus/tender.vim')
	call dein#add('tomasr/molokai')
	call dein#add("osyo-manga/vim-brightest")

	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable
