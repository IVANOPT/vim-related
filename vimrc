set laststatus=2
set background=dark
colorscheme solarized
let g:Powerline_symbols='unicode'   "在底部设置文件相关信息
let Tlist_Show_One_File = 1         "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1       "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1      "在右侧窗口中显示taglist窗口
set nu
set runtimepath^=~/.vim/bundle/ctrlp.vim 
#set runtimepath^=~/.vim/bundle/taglist.vim
#set runtimepath^=~/.vim/bundle/nerdtree

set ai ignorecase tabstop=4
set hlsearch 
map <expr> <F8> bufloaded("__Tag_List__")?"q":":TlistOpen\<cr>"      
set nocompatible
filetype off                              " 先关闭文件类型
set rtp+=~/.vim/bundle/vundle             " 将vundle路径添加到插件vim路径
call vundle#rc()                          " 执行Vundle初始化

Bundle 'gmarik/vundle'                    " 将Vundle加入到bundle
Bundle "Lokaltog/vim-powerline"    
Bundle "airblade/vim-gitgutter"
Bundle "pix/vim-taglist"
Bundle "scrooloose/nerdtree"
Bundle "orenhe/pylint.vim"

" pylint grammar
set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m

filetype indent plugin on                 " 安装完后打开文件类型
set shiftwidth=4                                

let Tlist_Show_One_File=1		"只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 	"如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1	"在右侧窗口显示taglist	
let Tlist_Sort_Type='name'
                                                       
nnoremap <C-h> <C-W>h                      
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" nerdtree config
map <`> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
