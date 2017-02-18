set tags+=~/.vim/tags/cpp_src/tags
syntax on
filetype plugin indent on

" pathogen
execute pathogen#infect()

map <C-n> :NERDTree<CR>

" miniBufExp
let g:miniBufExplMaxSize = 2

" taglist
let Tlist_Show_One_File=1	" 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1	" 当taglist是最后一个窗口时自动退出
let Tlist_Use_Right_Window=1	" 在右边显示taglist窗口
let Tlist_Sort_Type="name"	" tag按名字排序

" omnicppcomplete
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"]"

" tab
set ts=4
set expandtab
set number

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
