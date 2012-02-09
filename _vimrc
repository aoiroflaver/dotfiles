if has('gui_macvim')

		set antialias
		set showtabline=2    " タブを常に表示
		set transparency=4   " 透明度
		set imdisable        " IME OFF
		set guioptions-=T    " ツールバー非表示
		set antialias        " アンチエイリアス
		set tabstop=2        " タブサイズ
		set number           " 行番号表示
		set nobackup         " バックアップなし
		set noswapfile
		set visualbell t_vb= " ビープ音なし
		set columns=180      " 横幅
		set lines=60        " 行数
		set nowrapscan       " 検索をファイルの先頭へループしない
		set autoindent       " 新しい行のインデントを現在と同じにする
		set shiftwidth=2     " シフト移動幅
		set showmatch        " 閉じ括弧が入力されたとき、対応する括弧を表示する
		set smartcase        " 検索時に大文字を含んでいたら大/小を区別
		set laststatus=2
		set statusline=%<%f%=%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%9(\ %m%r\ %)[%4v][%12(\ %5l/%5L%)]
		set encoding=utf-8
		set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
		set fileformats=unix,dos,mac
		set clipboard=unnamedplus,unnamed "ヤンクした文字は、システムのクリップボードに入れる
		filetype plugin on "ファイルタイプ判定をon
		set guifontwide=Osaka:h12 " フォント設定
		set guifont=Osaka-Mono:h14

		noremap GG ggVG
		nnoremap gr gT
		noremap FF :Explore<CR>
		map <silent> <F2> :nohlsearch<CR>
		nnoremap ,v :<C-u>tabnew ~/.vimrc<CR>
		nnoremap <F5> :<C-u>source ~/.vimrc<CR>
		noremap j gj
		noremap k gk	
		
		"日付挿入
		inoremap <Leader><Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
		inoremap <Leader><Leader>time <C-R>=strftime('%H:%M')<CR>
		inoremap <Leader><Leader>w3cd <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>
		
		"Insertmode
		inoremap {} {}<LEFT>
		inoremap [] []<LEFT>
		inoremap () ()<LEFT>
		inoremap "" ""<LEFT>
		inoremap '' ''<LEFT>
		inoremap <> <><LEFT>

		"highlight WhitespaceEOL ctermbg=red guibg=red
		"match WhitespaceEOL /\s\+$/
		"autocmd WinEnter * match WhitespaceEOL /\s\+$/
		set list
		set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
		highlight SpecialKey term=underline ctermfg=darkgray guifg=#F5DEB3
		if has('multi_byte_ime') || has('xim')
 	   	highlight CursorIM guibg=White guifg=NONE "日本語入力時にカーソルの色を変更
		endif

		"プラグイン
		set nocompatible
		filetype off
		set rtp+=~/.vim/vundle.git/
		call vundle#rc()
		source $VIMRUNTIME/macros/matchit.vim
		Bundle 'snipMate'
		Bundle 'surround.vim'
		Bundle 'YankRing.vim'
		Bundle 'Shougo/neocomplcache'
		Bundle 'Align'

		filetype plugin indent on

		"Align
		let g:Align_xstrlen = 3

		" neocomplcache
		let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
		"let g:neocomplcache_max_list = 30
		"let g:neocomplcache_auto_completion_start_length = 2
		"let g:neocomplcache_enable_smart_case = 1
		"let g:neocomplcache_enable_auto_select = 1
		
		"imap <C-g>     <Plug>(neocomplcache_snippets_expand)
		"smap <C-g>     <Plug>(neocomplcache_snippets_expand)

endif
