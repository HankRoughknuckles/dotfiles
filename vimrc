 "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 "
 "                      .vimrc                          
 "
 "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

     set nocompatible               " be iMproved
     filetype off                   " required!



 "%%%%%%%%%%%%%%%%%%  Random Changes  %%%%%%%%%%%%%%%%%%%

    "Change leader key
    let mapleader = ","


    set laststatus=2    "always show the status line
    set t_Co=256        "set colors to 256


    set number          "show line number on side
    set mousehide       "hide mouse cursor while typing
    set showmode        "display the current mode
    set cursorline      "highlight the current line
    set hlsearch        "highlight search patterns
    set autoindent      
    set smartindent
    set ignorecase      "ignore case when search query is all
                        "lower-case
    set smartcase       "switch to case sensitive searching if
                        "a capital letter is present
    set gdefault        "makes search/replace global by default
    set backspace=2     "make backspace able to go over end of lines


    set encoding=utf-8  "make encoding be unicode

    
    "Tabs and indenting
    set expandtab       "make all tabs into spaces
    set shiftwidth=4    "when indenting with >> and <<, make it
                        "4 spaces
    set softtabstop=4   "when hitting tab in insert mode, it'll be
                        "4 spaces
    set tabstop=4       "will display all tabs in test as 4 spaces
    set preserveindent  "keep same indent as the previous line when
                        " making a new line

    set wrap
    set textwidth=74
    set formatoptions=qrn1
    set colorcolumn=74
    
    "Make a horizontal line on the current line if in insert mode
        :autocmd InsertEnter * set cul
        :autocmd InsertLeave * set nocul


 "%%%%%%%%%%%%%%%%%%  VUNDLE  %%%%%%%%%%%%%%%%%%%

     set rtp+=~/.vim/bundle/vundle/
     call vundle#rc() " let Vundle manage Vundle " required! 
     Bundle 'gmarik/vundle'

     " My Bundles here:
         Bundle 'tpope/vim-fugitive'
         Bundle 'tpope/vim-surround'
         Bundle 'Lokaltog/vim-easymotion'
         Bundle 'scrooloose/nerdtree'
         Bundle 'bling/vim-airline'

         Bundle "MarcWeber/vim-addon-mw-utils"
         Bundle "tomtom/tlib_vim"
         Bundle "snipmate-snippets"
         Bundle "garbas/vim-snipmate"

     " Other repos
        Bundle 'https://github.com/terryma/vim-multiple-cursors.git'

        "Bundle 'stacruz/sparkup', {'rtp': 'vim/'}
        "Bundle 'tpope/vim-rails.git'

     " vim-scripts repos
        "Bundle 'L9'
        "Bundle 'FuzzyFinder'
            
     " git repos on your local machine (ie. when wrking on yr own plugin)
        "Bundle 'file:///Users/gmarik/path/to/plugin'

     filetype plugin indent on     " required!
 


 "%%%%%%%%%%%%%%%%%%%%   PLUGIN CONFIGURATIONS   %%%%%%%%%%%%%%%%%%%%%% 
     "EasyMotion Config:
         let g:EasyMotion_leader_key = ']'


 "%%%%%%%%%%%%%%%%%%%%   COLOR SCHEMA   %%%%%%%%%%%%%%%%%%%%%% 
     syntax enable
     set background=dark
     colorscheme solarized
     let g:solarized_termcolors=256


 "%%%%%%%%%%%%%%%%%%%%   KEY MAPS   %%%%%%%%%%%%%%%%%%%%%% 
 
    "Set leader key to comma (,)
        :let mapleader = ","
        
    "Set regular backspace during insert mode
        set backspace=indent,eol,start

    "NERDTree
        map <leader>n :NERDTreeToggle<CR>B

    "Tab stuff
        "Switch between tabs using th and tj
            nnoremap tj  :tabnext<CR>
            nnoremap tk  :tabprev<CR>
        "Go to first and last tabs with th and tl
            nnoremap th  :tabfirst<CR>
            nnoremap tl  :tablast<CR>
        "Edit a tab with tt
            nnoremap tt  :tabedit<Space>
        "New tab with tn
            nnoremap tn  :tabnew<Space>
        "Move a tab to a different position in the tab list at the top
            nnoremap tm  :tabm<Space>
        "Close a tab with td
            nnoremap td  :tabclose<CR>
             
    "Switch between windows in the same tab
        nnoremap <silent> <C-h> <C-w>h
        nnoremap <silent> <C-j> <C-w>j
        nnoremap <silent> <C-l> <C-w>l

    "tComment stuff
        "Press leader+c to comment instead of ctrl+_ ctrl+_
        map <leader>c <c-_><c-_>
        
    "save time by pressing space instead of colon
        nmap <space> :

    "make ctrl backspace delete the entire word when in insert mode
        inoremap <C-BS> <C-W>

    "make 'kj' do the equivalent of escape
        :inoremap kj <Esc>
        :cnoremap kj <Esc>
    
     "make j and k keys go up normally instead of to the previous line number
         nnoremap j gj
         nnoremap k gk

    "make <leader>v re-highlight the last thing you just highlighted
        nnoremap <leader>v V`]

    "open up .vimrc
        nnoremap <leader>ev :tab new<cr>:e $MYVIMRC<cr>

    "make the default regex type to be Perl regex
        nnoremap / /\v
        nnoremap / /\v
        vnoremap ? ?\v
        vnoremap ? ?\v

    "get rid of search results
        nnoremap <leader><space> :noh<cr>   

    "make tab go to the corresponding parens or brackets
        nnoremap <tab> %
        vnoremap <tab> %

    "insert a -> arrow
        inoremap <C-l> ->

    "insert a => hash rocket
        inoremap <C-k> =><Space>

    "insert a $ at the front of the current word so as to make it a variable
        inoremap <C-v> <Esc>bi$<Esc>ea
    
    "insert $this
        inoremap <C-t> $this

    "make vim-surround use lowercase s instead of capital
        vmap s S

    "Fugitive commands
        nnoremap <leader>ga :Gwrite<cr>
        nnoremap <leader>gr :Gread<cr>
        nnoremap <leader>gs :Gstatus<cr>
        nnoremap <leader>gl :Glog<cr>
        nnoremap <leader>gc :Gcommit -m ""<left>

        nnoremap <leader>gd :Gdiff<cr>
        nmap <leader>dp dp
        vnoremap <leader>dp :diffput<cr>:diffupdate<cr>

    "open up php SnipMate snippets file
        nnoremap <leader>es :tab new<cr>:e ~/.vim/snippets/php.snippets<cr>

    "make vim.ack easier to reach
        nnoremap <leader>a :Ack<space>

    "insert an erb <% %> tag (with no output)
        inoremap <C-e> <%<space>%><left><left><left> 
        
    "insert an erb <% %> tag (with output)
        inoremap <C-r> <%=<space>%><left><left><left> 
