"return" 2>&- || "exit"

"--------------------
"" 基本的な設定
"--------------------
" 編集中のファイル名を表示
set title

" 行番号を表示する
set number

" insertモードから抜ける
inoremap <silent> jj <ESC>

"" インデントの設定
" タブ入力を複数の空白入力に置き換える
set expandtab
" 画面上でタブ文字が占める幅
set tabstop=2
" 自動インデントでずれる幅
set shiftwidth=2
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2
" 改行時に前の行のインデントを継続する
set autoindent
"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

"現在文字列/全体列表示
set statusline+=[C=%c/%{col('$')-1}]

"現在文字行/全体行表示
set statusline+=[L=%l/%L]

"括弧の対応をハイライト
set showmatch

"特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。
""trailは行末スペース。
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

" vi との互換性OFF
set nocompatible

" ファイル形式の検出を無効にする
filetype off

" ファイル形式検出、プラグイン、インデントを ON
"
filetype plugin indent on
set nocompatible
filetype plugin indent off
filetype plugin indent on


"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

NeoBundle 'Shougo/unite.vim'

" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" gitの差分を表示するぜ
NeoBundle 'airblade/vim-gitgutter'

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

" 括弧を入力した際、自動的にとじ括弧を挿入してくれるプラグイン
NeoBundle 'Townk/vim-autoclose'

" lightline
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

" solarized
let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
"let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" gitの差分を表示する
:highlight SignColumn guibg=darkgrey

set laststatus=2
if !has('gui_running')
    set t_Co=256
  endif
