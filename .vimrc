"-------------------------------------
"　include the .vim files
"-------------------------------------

if filereadable(expand('~/.vim/neo.vim'))
	source ~/.vim/neo.vim
else
	echo "no neobundle_config"
endif

if filereadable(expand('~/.vim/keymap.vim'))
	source ~/.vim/keymap.vim
else
	echo "no keymao.vim"
endif

if filereadable(expand('~/.vim/func.vim'))
	source ~/.vim/func.vim
else
	echo "no func.vim"
endif

"-------------------------------------
"colorscheme
"-------------------------------------
"colorscheme antares
"colorscheme tender
"colorscheme molokai
"colorscheme mornning
"colorscheme inkstained
colorscheme darkblue
"tlistに関する設定
let Tlist_Use_Right_Window=1

" may sometime will use.... maybenot
" https://vim-jp.org/vim-users-jp/2010/09/02/Hack-171.html
" ファイル名表示
":wqset statusline=%F
"" 現在の関数名表示
"let &statusline .= ' : %{cfi#get_func_name() == "" ? "no function" :  "". cfi#get_func_name() . "()"}'
"let w:airline_section_b =' : %{cfi#get_func_name() == "" ? "no function" :  "". cfi#get_func_name() . "()"}'
"" 変更チェック表示
"let &statusline .= '%m'
"" 読み込み専用かどうか表示
"set statusline+=%r
"" ヘルプページなら[HELP]と表示
"set statusline+=%h
"" プレビューウインドウなら[Prevew]と表示
"set statusline+=%w
"" これ以降は右寄せ表示
"set statusline+=%=
"" file encoding
"set statusline+=%{&fileencoding}
"" 現在行数/全行数
"set statusline+=[LINE=%l/%L]
"" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
"set laststatus=2
"
""TODO:secsion,unite,pwoerline customise,dictionnnalry(for mac)
"let g:airline_left_sep='>'
"let g:airline_left_sep=' : %{cfi#get_func_name() == "" ? "no function" :  "". cfi#get_func_name() . "()"}'
set number         " 行番号を表示する
set cursorline     " カーソル行の背景色を変える
"set cursorcolumn   " カーソル位置のカラムの背景色を変える
set laststatus=2   " ステータス行を常に表示
set cmdheight=2    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
"set helpheight=999 " ヘルプを画面いっぱいに開く
"set list           " 不可視文字を表示
"" 不可視文字の表示記号指定
""set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

"if (has("termguicolors"))
"  set termguicolors
"endif
syntax on
"set synmaxcol=200
" カーソル移動関連の設定
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
"set scrolloff=8                " 上下8行の視界を確保
"set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 検索/置換の設定

set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   " 置換の時 g オプションをデフォルトで有効にする

" タブ/インデントの設定

"set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=4     " 画面上でタブ文字が占める幅
set shiftwidth=4  " 自動インデントでずれる幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" 動作環境との統合関連の設定

"タグの使い手〜
"ctags --language=c -f /h

" Open Vim internal help by K command
set keywordprg=:help

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
"set mouse=a
" Windows でもパスの区切り文字を / にする
"set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
"set imeinsert=off

" コマンドラインの設定
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=1000
" tagsジャンプの時に複数ある時は一覧表示                                        


" ビープの設定
"ビープ音すべてを無効にする
"set visualbell t_vb=
"set noerrorbells "エラーメッセージの表示時にビープを鳴らさない

"2017/06/18追加　参照http://qiita.com/iwaseasahi/items/93db781ef08bcdb15004 
""note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif
