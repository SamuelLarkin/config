" vim:nowrap:

" [Vim Error: E474: Invalid argument: listchars=tab:»·,trail:·](https://stackoverflow.com/a/18321539)
" {
   scriptencoding utf-8
   set encoding=utf-8
" }


" NOTE
" # Enable wdiff syntax highlighting.
" set syntax=wdiff

" commands {
" dit: delete inner tag for html
" d/<pattern>: delete from the cursor until the searched pattern
" }


" {
   "set formatoptions=tcoql
   "t: Auto-wrap text using textwidth
   "q: Allow formatting of comments with `gq`
   "l: Long lines are not broken in insert mode
   set formatoptions=tql
" }


" Basics {
   :syntax enable " syntax highlighting on
   set nocompatible " explicitly get out of vi-compatible mode

   set hidden " you can change buffers without saving
   set noerrorbells " don't make noise
   set smartcase " if there are caps, go case-sensitive

   " Put typical Portage directory structure in the search path for "gf"
   set path=.,../*,$BOOST_ROOT/include,/usr/include,,
   set nolist listchars=extends:«,tab:»·,trail:°
" }


" Vim UI {
   set relativenumber   " Helps to quickly calculate line jumps
   set ruler
   set incsearch
   set hlsearch
   set scrolloff=2
   set laststatus=2 " Always display the status bar with filename and modification [+]
   set showmatch " show matching brackets
   "set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P " Change the statusline to also show unicode value of a character.
   "set statusline=%<%f%h%m%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%r%=%b\ 0x%B\ \ %l,%c%V\ %P " Change the statusline to also show unicode value of a character.
   if has("statusline")
      set statusline =          " clear
      set statusline+=%02n      " leading zero 2 digit buffer number
      "xset statusline+=\ %<%F    " file full path, truncate
      set statusline+=\ %t      " file tail
      set statusline+=[%{&ff}]  " [fileformat]
      set statusline+=%r        " read only flag '[RO]'
      set statusline+=%m        " modified flag '[+]' if modifiable
      set statusline+=%h        " help flag '[Help]'
      set statusline+=%=        " left/right separation point
      set statusline+=[%b       " decimal byte
      set statusline+=\ x%02B]  " hex byte ' \x62'
      set statusline+=\ %{(line('.')-1)%16} " line
      set statusline+=:%{(line('.')-1)/16}  " block
      set statusline+=\/%{line('$')/16}     " max block
      set statusline+=\ %c      " column number
      set statusline+=%V        " virtual column '-{n}'
      set statusline+=:%l/%L    " line/lines
      set statusline+=\ %p%%    " percent of file
      "xset statusline+=\ %P      " percent of file{4} Top | n% | Bot
      set statusline+=%{&hlsearch?'+':'-'}
      set statusline+=%{&paste?'=':'\ '}
      set statusline+=%{&wrap?'<':'>'}
   endif
   set statusline=
   set statusline+=%02n " leading zero 2 digit Buffer number.
   set statusline+=%<   " Where to truncate line if too long.  Default is at the start.  No width fields allowed.
   set statusline+=\ %f "Path to the file in the buffer, as typed or relative to current directory.
   set statusline+=%h   " Help buffer flag, text is "[help]".
   set statusline+=%m   " Modified flag, text is "[+]"; "[-]" if 'modifiable' is off.
   set statusline+=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\"}  " Adds [file's encoding(BOMB)?]
   set statusline+=%r   " Readonly flag, text is "[RO]".
   set statusline+=%{fugitive#statusline()}   " http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
   set statusline+=%{TagInStatusLine()}   " from https://github.com/mgedmin/pythonhelper.vim
   set statusline+=%=   " Separation point between left and right aligned items.  No width fields allowed.
   set statusline+=%b   " Value of byte under cursor.
   set statusline+=\ 0x%B   " Value of byte under cursor in hexadecimal.
   set statusline+=\ \ %l,%c   " Line number, Column number.
   set statusline+=%V   " Virtual column number as -{num}.  Not displayed if equal to 'c'.
   set statusline+=\ %P " Percentage through file of displayed window.  This is like the percentage described for 'ruler'.  Always 3 in length.
   set statusline+=%{&paste?'=':'\ '}
   set statusline+=%{&wrap?'<':'>'}

"	" Colors {
"		:highlight Comment ctermfg=6 ctermbg=black
"		set t_Co=256
"		"colorscheme asu1dark
"                " Custom color on gpsc {
"                	set background=dark
"                	hi clear
"                	if exists("syntax_on")
"                	  syntax reset
"                	endif
"                	let g:colors_name = "YOUR COLOR NAME"
"
"                	hi Comment guifg=green
"                	hi Constant gui=bold guifg=cyan
"                	hi Cursor guifg=green guibg=#60a060
"                	hi CursorColumn guibg=gray40
"                	hi CursorIM gui=None
"                	hi CursorLine guibg=gray40
"                	hi DiffAdd guibg=slateblue
"                	hi DiffChange guibg=darkgreen
"                	hi DiffDelete gui=bold guifg=blue guibg=coral
"                	hi DiffText gui=bold guibg=olivedrab
"                	hi Directory guifg=cyan
"                	hi Error guifg=white guibg=red
"                	hi ErrorMsg guifg=black guibg=red
"                	hi FoldColumn guifg=white guibg=gray30
"                	hi Folded guifg=cyan guibg=gray30
"                	hi Identifier guifg=cyan
"                	hi Ignore guifg=black
"                	hi IncSearch guibg=steelblue
"                	hi Label guifg=gold2
"                	hi LineNr guifg=darkgray
"                	hi MatchParen guibg=darkcyan
"                	hi ModeMsg gui=bold
"                	hi MoreMsg gui=bold guifg=seagreen
"                	hi NonText gui=bold guifg=brown
"                	hi Normal guifg=cyan guibg=black
"                	hi Operator guifg=orange
"                	hi Pmenu guibg=magenta
"                	hi PmenuSbar guibg=grey
"                	hi PmenuSel guibg=darkgray
"                	hi PmenuThumb gui=reverse
"                	hi PreProc guifg=pink2
"                	hi Question gui=bold guifg=green
"                	hi Search guifg=black guibg=lightslateblue
"                	hi SignColumn guifg=cyan guibg=grey
"                	hi Special guifg=yellow
"                	hi SpecialKey guifg=cyan
"                	hi SpellBad gui=undercurl
"                	hi SpellCap gui=undercurl
"                	hi SpellLocal gui=undercurl
"                	hi SpellRare gui=undercurl
"                	hi Statement guifg=lightblue
"                	hi StatusLine gui=bold guifg=cyan guibg=blue
"                	hi StatusLineNC guifg=lightblue guibg=darkblue
"                	hi TabLine gui=underline guibg=darkgray
"                	hi TabLineFill gui=reverse
"                	hi TabLineSel gui=bold
"                	hi Title gui=bold guifg=darkgray
"                	hi Todo guifg=black guibg=orange
"                	hi Type gui=bold guifg=seagreen
"                	hi Underlined gui=underline guifg=#80a0ff
"                	hi VertSplit gui=reverse
"                	hi Visual gui=reverse
"                	hi VisualNOS gui=bold,underline
"                	hi WarningMsg guifg=black guibg=green
"                	hi WildMenu guifg=black guibg=yellow
"                	hi link Boolean Constant
"                	hi link Character Constant
"                	hi link Conditional Statement
"                	hi link Debug Special
"                	hi link Define PreProc
"                	hi link Delimiter Special
"                	hi link Exception Statement
"                	hi link Float Constant
"                	hi link Function Identifier
"                	hi link Include PreProc
"                	hi link Keyword Statement
"                	hi link Macro PreProc
"                	hi link Number Constant
"                	hi link PreCondit PreProc
"                	hi link Repeat Statement
"                	hi link SpecialChar Special
"                	hi link SpecialComment Special
"                	hi link StorageClass Type
"                	hi link String Constant
"                	hi link Structure Type
"                	hi link Tag Special
"                	hi link Typedef Type
"                " }
"	" }
" }


" Text Formatting/Layout {
   set shiftwidth=3
   "set shiftround
   set tabstop=8
   set expandtab
   set autoindent
   set diffopt=filler,iwhite " Diffopt for gvim 7
" }


" Plugin Settings {
   " Buffer Explorer {
      let g:bufExplorerSortBy='mru'
   " }
" }


" Fix my typos {
   abbr Protage Portage
   abbr virutal virtual
" }


" Mappings {
   " Specific mapping for quick vimdiff merging
   map <F1> :wqa<CR>
   map <F2> ]c
   map <F3> do
   map <F5> :%!xmllint --format --recover --encode UTF-8 -<CR>
   map <F6> :bufdo %!xmllint --format --recover --encode UTF-8 -<CR>
   nnoremap <special> <F7> :call DiffText(@a, @b, g:diffed_buffers)<CR>
   nnoremap <special> <F8> :call WipeOutDiffs(g:diffed_buffers)<CR>

   " Tab related convinient shortcuts
   map <C-t><up> :tabr<cr>
   map <C-t>k :tabr<cr>
   map <C-t><down> :tabl<cr>
   map <C-t>j :tabl<cr>
   map <C-t><left> :tabp<cr>
   map <C-t>h :tabp<cr>
   map <C-t><right> :tabn<cr>
   map <C-t>l :tabn<cr>
   map <C-t>t :tabs<cr>

   nnoremap <silent> <F8> :TlistToggle<CR>

   " Remap search key to always center serach.
   nnoremap n nzz
   nnoremap N Nzz
   nnoremap * *zz
   nnoremap # #zz
   nnoremap g* g*zz
   nnoremap g# g#zz

   " First search for a pattern, then fold everything else with \z
   " Use zr to display more context, or zm to display less context.
   nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>
" }


" Easy Headers {
   abbr hashHeader # @file# @brief## @author Samuel Larkin## Traitement multilingue de textes / Multilingual Text Processing# Centre de recherche en technologies numériques / Digital Technologies Research Centre# Conseil national de recherches Canada / National Research Council Canada# Copyright 2022, Sa Majeste la Reine du Chef du Canada# Copyright 2022, Her Majesty in Right of Canada

   abbr cHeader /** * @author Samuel Larkin * @file prog.cc * @brief Briefly describe your program here. * * * Traitement multilingue de textes / Multilingual Text Processing * Centre de recherche en technologies numériques / Digital Technologies Research Centre * Conseil national de recherches Canada / National Research Council Canada * Copyright 2022, Sa Majeste la Reine du Chef du Canada * Copyright 2022, Her Majesty in Right of Canada*/

   abbr makeHeader #!/usr/bin/make -f# vim:noet:ts=3:nowrap:filetype=make-include Makefile.params.DEFAULT_GOAL := all.PHONY: allall:.PHONY: cleanclean:
" }


" Do not expand tabs when editing a Makefile.
autocmd BufRead,BufNewFile Makefile set noexpandtab


" AL_DIFF="al-diff.py -m '<PORTAGE_DOCUMENT_END>'" AL1=$3 AL2=$4 vimdiff +"set diffexpr=DiffAligment()" +"set diffopt=filler,context:0" $1 $2
function DiffAligment()
   let diff = "al-diff.py"
   silent execute "!" . $AL_DIFF . " " . $AL1 . " " . $AL2 . " " . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction


"
function DiffPa()
   let diff = "~/mybin/diff-pa.py -v "
   "silent execute "!" . diff . " -m \'" $VIMDIFFPA_OPTS . "\'" . v:fname_in . " " . v:fname_new . " > " . v:fname_out
   silent execute "!" . diff . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction


" see ~/.alias vimdiffpa2
function DiffPa2()
   let diff = "~/mybin/diff-pa2.py -v "
   "silent execute "!" . diff . " -m \'" $VIMDIFFPA_OPTS . "\'" . v:fname_in . " " . v:fname_new . " > " . v:fname_out
   silent execute "!" . diff . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction


" Custom diff expression so we can add arguments to diff itself
set diffexpr=MyDiff()
function MyDiff()
   let opt = ""
   if &diffopt =~ "icase"
      let opt = opt . "-i "
   endif
   if &diffopt =~ "iwhite"
      let opt = opt . "-b "
   endif
   silent execute "!diff " . $VIMDIFF_OPT . " -a --binary " . opt . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction



" Autocommands {
   " This will auto indent xml file.
   "au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
   "au FileType xml set nowrap
" }


" Perl autofolding sub {
"   function GetPerlFold()
"     if getline(v:lnum) =~ '^\s*sub\s'
"       return ">1"
"     elseif getline(v:lnum) =~ '\}\s*$'
"       let my_perlnum = v:lnum
"       let my_perlmax = line("$")
"       while (1)
"         let my_perlnum = my_perlnum + 1
"         if my_perlnum > my_perlmax
"           return "<1"
"         endif
"         let my_perldata = getline(my_perlnum)
"         if my_perldata =~ '^\s*\(\#.*\)\?$'
"           " do nothing
"         elseif my_perldata =~ '^\s*sub\s'
"           return "<1"
"         else
"           return "="
"         endif
"       endwhile
"     else
"       return "="
"     endif
"   endfunction
"   setlocal foldexpr=GetPerlFold()
"   setlocal foldmethod=expr
"}


" Function that allows diffying to buffer in order to diff two functions. {
"enew | call setline(1, split(@a, "\n")) | diffthis | vnew | call setline(1, split(@b, "\n")) | diffthis
   " source: http://stackoverflow.com/questions/3619146/vimdiff-two-subroutines-in-same-file
   let g:diffed_buffers=[]
   function DiffText(a, b, diffed_buffers)
      "enew
      execute 'tab split | enew'
      setlocal buftype=nowrite
      call add(a:diffed_buffers, bufnr('%'))
      call setline(1, split(a:a, "\n"))
      diffthis
      vnew
      setlocal buftype=nowrite
      call add(a:diffed_buffers, bufnr('%'))
      call setline(1, split(a:b, "\n"))
      diffthis
   endfunction
   function WipeOutDiffs(diffed_buffers)
      for buffer in a:diffed_buffers
         execute 'bwipeout! '.buffer
      endfor
      call remove(a:diffed_buffers, 0, -1)
   endfunction
"}


" Bookmarks
" http://www.vi-improved.org/vimrc.php


""""""""""""""""""""""""""""""""""""""""
" For Vundle
" https://github.com/VundleVim/Vundle.vim#about
" http://www.nerdyweekly.com/posts/modern-vim-plugin-management-pathogen-vs-vundle/
" http://manhnt.github.io/vim/2016/06/25/vundle-beginner.html
" List of many vim plugins:
"   https://github.com/vim-scripts?tab=repositories
" [Awesome Vim plugins from across the Universe](https://vimawesome.com/)
" INSTALLATION:
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"   :PluginInstall
"   :PluginSearch vcscommand
"{
   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')

   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'

   " The following are examples of different formats supported.
   " Keep Plugin commands between vundle#begin/end.

   " l9 is a Vim-script library, which provides some utility functions and
   " commands.
   " for programming in Vim.
   " plugin from http://vim-scripts.org/vim/scripts.html
   Plugin 'L9'

   " BufExplorer
   "Plugin 'jlanzarotta/bufexplorer'
   Plugin 'bufexplorer.zip'

   " VCSVimDiff
   "Bundle 'vim-scripts/vcscommand.vim'
   "Plugin 'http://repo.or.cz/r/vcscommand.git'
   Plugin 'vcscommand.vim'

   " plugin on GitHub repo
   Plugin 'tpope/vim-fugitive'

   " Display in the statusline class, function & method the cursor is in.
   " https://github.com/mgedmin/pythonhelper.vim
   Plugin 'mgedmin/pythonhelper.vim'

   " Pythonsense
   " Pythonsense is a Vim plugin that provides text objects and motions for
   " Python classes, methods, functions, and doc strings.
   " https://github.com/jeetsukumaran/vim-pythonsense/blob/master/README.md
   Bundle 'jeetsukumaran/vim-pythonsense'

   " Autocompletion for Python
   " https://github.com/davidhalter/jedi-vim
   " git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
   Plugin 'davidhalter/jedi-vim'

   " vim-flake8
   " https://github.com/nvie/vim-flake8.git
   Plugin 'nvie/vim-flake8'

   " A parser for a condensed HTML format
   " https://github.com/rstacruz/sparkup
   " The sparkup vim script is in a subdirectory of this repo called vim.
   " Pass the path to set the runtimepath properly.
   Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

   " Tagbar: Awesome source code [tag]browsing
   " Displays a file/class explorer using :TagbarOpen
   " https://github.com/majutsushi/tagbar
   Bundle 'majutsushi/tagbar'

   " Vim script for text filtering and alignment
   " https://github.com/godlygeek/tabular
   " howoto: `:'<,'>Tabularize /=`
   Bundle 'godlygeek/tabular'

   " XPath search plugin for Vim
   " https://github.com/actionshrimp/vim-xpath
   Bundle 'actionshrimp/vim-xpath'

   " A better JSON for Vim: distinct highlighting of keywords vs values,
   " JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
   " https://github.com/elzr/vim-json
   Bundle 'elzr/vim-json'

   " One colorscheme pack to rule them all!
   " https://github.com/flazz/vim-colorschemes
   Plugin 'flazz/vim-colorschemes'

   " This converts a file containing conflict markers into a two-way diff.
   " https://github.com/whiteinge/diffconflicts
   " git config --global merge.tool diffconflicts
   " git config --global mergetool.diffconflicts.cmd 'vim -c DiffConflicts `$MERGED` `$BASE` `$LOCAL` `$REMOTE`'
   " git config --global mergetool.diffconflicts.trustExitCode true
   " git config --global mergetool.keepBackup false
   "
   Bundle 'whiteinge/diffconflicts'

   " Surround.vim is all about `surroundings`: parentheses, brackets, quotes,
   " XML tags, and more. The plugin provides mappings to easily delete, change
   " and add such surroundings in pairs.
   " https://github.com/tpope/vim-surround
   "Bundle 'tpope/vim-surround'

   """""""""""""""""""""""""""""""""""
   " FANCY VIM PLUGINS
   " https://danyspin97.org/blog/fancy-vim-plugins/

   " Rainbow Parentheses Improved, shorter code, no level limit, smooth and
   " fast, powerful configuration.
   " https://github.com/luochen1990/rainbow
   Plugin 'luochen1990/rainbow'

   " illuminate.vim - Vim plugin for selectively illuminating other uses of
   " the current word under the cursor
   " https://github.com/RRethy/vim-illuminate
   Plugin 'RRethy/vim-illuminate'

   " it pulses every time you scroll the search results by pressing n/N.
   Plugin 'inside/vim-search-pulse'

   " The missing motion for Vim.
   " https://github.com/justinmk/vim-sneak
   Plugin 'justinmk/vim-sneak'

   " Semantic Highlighting for Python in Neovim
   " https://github.com/numirias/semshi
   "Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
   "Plugin 'numirias/semshi'

   " Vim configuration for Rust
   " https://github.com/rust-lang/rust.vim
   Plugin 'rust-lang/rust.vim'


   """""""""""""""""""""""""""""""""""""
   " Under testing, waiting for approval.

   " fzf is a general-purpose command-line fuzzy finder
   " https://github.com/junegunn/fzf
   Plugin 'junegunn/fzf'

   " Make your Vim/Neovim as smart as VSCode.
   " https://github.com/neoclide/coc.nvim
   "Plugin 'neoclide/coc.nvim'

   " Asynchronous Lint Engine
   " https://github.com/dense-analysis/ale
   Plugin 'dense-analysis/ale'

   " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
   " https://github.com/ctrlpvim/ctrlp.vim
   " https://ctrlpvim.github.io/ctrlp.vim/
   Plugin 'ctrlpvim/ctrlp.vim'

   " All of your Plugins must be added before the following line
   call vundle#end()            " required
   filetype plugin indent on    " required
   " To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line
"}


" Vim UI {
   " http://vim.wikia.com/wiki/Switch_color_schemes
   " Colors {
      :highlight Comment ctermfg=6 ctermbg=black
      set t_Co=256
      "colorscheme asu1dark
      colorscheme desertink
   " }
" }


" Vundle
" {
   let g:rainbow_active = 1
   let g:Illuminate_delay = 250
   let g:vim_search_pulse_duration = 200
 
   " ALE
   " {
      " [How can I show errors or warnings in my statusline](https://github.com/dense-analysis/ale#5vii-how-can-i-show-errors-or-warnings-in-my-statusline)
      let g:airline#extensions#ale#enabled = 1
   " }

   " Sneak
   " {
      let g:sneak#label = 1
      nmap f <Plug>Sneak_s
      nmap F <Plug>Sneak_S
   " }
" }



"" Python specifics
"" Warning: this must be the last thing so it doesn't get overriden.
""{
"au BufNewFile,BufRead *.py
"    \ set tabstop=3 |
"    \ set softtabstop=3 |
"    \ set shiftwidth=3 |
"    \ set textwidth=79 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix
""}

" Quick Code Snippets
" {
   abbr _pudb_ from pudb import set_trace; set_trace()
" }
