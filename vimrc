""""""""""""""""""""""""""""""""""""""""""""""""
"                    基本配置                  "
""""""""""""""""""""""""""""""""""""""""""""""""
    "设置默认编码
    set encoding=utf8

    "显示行号
    set nu
    "自动换行
    set wrap
    "按下F2关闭或者显示行号
    nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

    "语法高亮，文件类型
    syntax on
    filetype plugin indent on

    "显示当前的行号和序列号
    set ruler
    "在状态栏显示正在输入的命令
    set showcmd 
    "wild模式
    set wildmenu

    "支持鼠标
    set mouse=a

    "支持单词拼写检查
    set spell

    "设置配色方案
    colorscheme morning
    set guifont=YaHei\ Consolas\ Hybrid\ 10
""""""""""""""""""""""""""""""""""""""""""""""""
"                    自动保存                  "
"""""""""""""""""""""""""""""""""""""""""""""""" 
    let g:auto_save = 1
""""""""""""""""""""""""""""""""""""""""""""""""
"                    设置缩进                  "
""""""""""""""""""""""""""""""""""""""""""""""""
    set autoindent 
    set expandtab
    set tabstop=4
    set shiftwidth=4
    "打开vim时把已有的Tab全部转换为空格
    retab 

""""""""""""""""""""""""""""""""""""""""""""""""
"                    快速退出                  "
""""""""""""""""""""""""""""""""""""""""""""""""
    imap jj <esc>
    map ,f :q!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
"                    快速vimrc
""""""""""""""""""""""""""""""""""""""""""""""""
    map ,e :e ~/.vimrc<CR>
    autocmd! bufwritepost vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""
"                    配置Pathogen              "
""""""""""""""""""""""""""""""""""""""""""""""""
    execute pathogen#infect()
    call    pathogen#helptags() 
""""""""""""""""""""""""""""""""""""""""""""""""
"                    NERDTree                  "
""""""""""""""""""""""""""""""""""""""""""""""""
    map <c-n> :NERDTreeToggle<CR>
    "autocmd VimEnter * NERDTree
    let NERDTreeWinPos="right"
    let NERDTreeWinSize=30
    let NERDTreeMouseMode=2
    let NERDChristmasTree=1 
    let NERDTreeShowHidden=1
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""
"                    配置代码折叠              "
""""""""""""""""""""""""""""""""""""""""""""""""
    " 按下 'za' 打开或者折叠代码
    set foldmethod=indent
    set foldlevel=99
    map <F3> za
""""""""""""""""""""""""""""""""""""""""""""""""
"                    缓冲区切换              "
""""""""""""""""""""""""""""""""""""""""""""""""

    set hidden "in order to switch between buffers with unsaved change 
    map <s-tab> :bp<cr>
    map <tab> :bn<cr>
    map ,bd :bd<cr>
""""""""""""""""""""""""""""""""""""""""""""""""
"                    窗口分列                  "
""""""""""""""""""""""""""""""""""""""""""""""""
    " 垂直分屏 ： Ctrl+w+v
    " 水平分屏 ： Ctrl+w+s
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h

""""""""""""""""""""""""""""""""""""""""""""""""
"                    php自动补全               "
""""""""""""""""""""""""""""""""""""""""""""""""
    au FileType php call AddPHPFuncList()
    function AddPHPFuncList()
            set dictionary-=/home/doro_lab/.vim/bundle/phpfunclist/funclist.txt dictionary+=/home/doro_lab/.vim/bundle/phpfunclist/funclist.txt 
            set complete-=k complete+=k
    endfunction


    let g:languagetool_jar='/home/doro/.vim/bundle/language-tool/LanguageTool-2.5/languagetool-commandline.jar'
