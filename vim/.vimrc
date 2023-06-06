colorscheme molokai
set number " 行番号の追加
set cursorline " 編集中の行をハイライト
set ruler " 右下にカーソルの位置を表示
" set list タブ文字を CTRL-I で表示し、行末に $ で表示する。
set showcmd " 入力中のコマンドを表示
set title " タイトルの追加
syntax enable " シンタックスハイライトを有効化
set wildmenu " vim上からファイルを選択できる機能を有効化
set ambiwidth=double " 全角文字の重なりを解消
set backspace=indent,eol,start " 挿入モードでbackspaceを使って削除を可能に
set laststatus=2 " ステータスバーを2行表示
set history=500 " コマンドの履歴を1000件保存
set showmatch " 対応する括弧をハイライト
set smartindent " 前の行のインデントを保持
set clipboard+=unnamed " ヤンクの結果をクリップボードに保存
set noerrorbells " エラーの表示時にビープ音を鳴らさない
set mouse=a " マウスの有効化
set wrap "ウィンドウの幅より長い行は折り返され、次の行に続けて表示
set shiftwidth=0 " タブの設定(タブ幅4の場合)
set softtabstop=2
set tabstop=2

set hlsearch " 検索結果をハイライト
set incsearch " 最初の一文字を入力した時点から検索開始
set wrapscan " ファイル末尾に到達すると再び先頭から検索

