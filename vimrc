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
    set visualbell      "no sounds
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
    set shiftwidth=2    "when indenting with >> and <<, make it
                        "2 spaces
    set softtabstop=2   "when hitting tab in insert mode, it'll be
                        "2 spaces
    set tabstop=2       "will display all tabs in test as 2 spaces
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
 


 "%%%%%%%%%%%%%%%%%%%%   PLUGIN MAPPING AND CONFIG   %%%%%%%%%%%%%%%%%%%%% 
     "EasyMotion Config:
         let g:EasyMotion_leader_key = ']'


    "Fugitive commands
        nnoremap <leader>ga :Git<space>commit<space>--amend<cr>
        nnoremap <leader>gr :Gread<cr>
        nnoremap <leader>gw :Gwrite<cr>
        nnoremap <leader>gs :Gstatus<cr>
        nnoremap <leader>gl :Glog<cr>
        nnoremap <leader>gc :Gcommit -m ""<left>
        nnoremap <leader>gd :Gdiff<cr>
        nmap <leader>dp dp
        vnoremap <leader>dp :diffput<cr>:diffupdate<cr>

    "Command-t commands
        nnoremap <leader>t :CommandTFlush<cr>:CommandT<cr>

    "NERDTree
        map <leader>n :NERDTreeToggle<CR>B

    "make vim-surround use lowercase s instead of capital
        vmap s S

    "open up php SnipMate snippets file
        nnoremap <leader>es :tab new<cr>:e ~/.vim/snippets/php.snippets<cr>

    "tComment stuff
        "Press leader+c to comment instead of ctrl+_ ctrl+_
        map <leader>c <c-_><c-_>
        
 "%%%%%%%%%%%%%%%%%%%%   COLOR SCHEMA   %%%%%%%%%%%%%%%%%%%%%% 
     syntax enable
     set background=dark
     colorscheme solarized
     " let g:solarized_termolors=256 "For some reason, when this is
     " uncommented, sourcing the vimrc file while vim is running will make
     " the colors all screwy


 "%%%%%%%%%%%%%%%%%%%%   MISC KEY MAPS   %%%%%%%%%%%%%%%%%%%%%% 
 
    "Set leader key to comma (,)
        :let mapleader = ","
        
    "Set regular backspace during insert mode
        set backspace=indent,eol,start

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
        nnoremap <silent> <C-k> <C-w>k

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

    "source .vimrc
      nnoremap <leader>sv :source<Space>$MYVIMRC<cr>

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

    "make vim.ack easier to reach
        nnoremap <leader>a :Ack<space>

    "insert an erb <% %> tag (with no output)
        inoremap <C-e> <%<space>%><left><left><left> 
        
    "insert an erb <%= %> tag (with output)
        inoremap <C-r> <%=<space>%><left><left><left> 

    "make the current word UPPERCASE
      inoremap <C-c> <Esc>viWUEa
      nnoremap <C-c> viWUE
      vnoremap <C-c> U`>
      vnoremap U <nop> "training to get me to stop using the old way

    "insert a padding space on the inside of the selected ()
      nnoremap <leader>is vi(<Esc>a<Space><Esc>`<i<Space><Esc>h%
      vnoremap <leader>is <Esc>vi(<Esc>a<Space><Esc>`<i<Space><Esc>h%

    "delete a padding space on the inside of the selected ()
      nnoremap <leader>ds vi(<Esc>x`<xh%
      vnoremap <leader>ds <Esc>vi(<Esc>x`<xh%
