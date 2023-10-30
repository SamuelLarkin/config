" vim:nowrap:

""""""""""""""""""""""""""""""""""""""""
" For Vundle
" [Vundle](https://github.com/VundleVim/Vundle.vim)
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

   " [l9](http://vim-scripts.org/vim/scripts.html)
   " is a Vim-script library, which provides some utility functions and
   " commands.
   " for programming in Vim.
   Plugin 'L9'

   " BufExplorer
   "Plugin 'jlanzarotta/bufexplorer'
   Plugin 'bufexplorer.zip'

   " [Tagbar](https://github.com/majutsushi/tagbar)
   " Awesome source code [tag]browsing
   " Displays a file/class explorer using :TagbarOpen
   " https://github.com/majutsushi/tagbar
   Plugin 'majutsushi/tagbar'

   " [tabular](https://github.com/godlygeek/tabular)
   " Vim script for text filtering and alignment
   " howoto: `:'<,'>Tabularize /=`
   Plugin 'godlygeek/tabular'

   " [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
   " One colorscheme pack to rule them all!
   Plugin 'flazz/vim-colorschemes'

   " [diffconflicts](https://github.com/whiteinge/diffconflicts)
   " This converts a file containing conflict markers into a two-way diff.
   " git config --global merge.tool diffconflicts
   " git config --global mergetool.diffconflicts.cmd 'vim -c DiffConflicts `$MERGED` `$BASE` `$LOCAL` `$REMOTE`'
   " git config --global mergetool.diffconflicts.trustExitCode true
   " git config --global mergetool.keepBackup false
   Plugin 'whiteinge/diffconflicts'

   " [vim-surround](https://github.com/tpope/vim-surround)
   " Surround.vim is all about `surroundings`: parentheses, brackets, quotes,
   " XML tags, and more. The plugin provides mappings to easily delete, change
   " and add such surroundings in pairs.
   " https://github.com/tpope/vim-surround
   "Plugin 'tpope/vim-surround'

   " [vim-sneak](https://github.com/justinmk/vim-sneak)
   " The missing motion for Vim.
   Plugin 'justinmk/vim-sneak'

   """""""""""""""""""""""""""""""""""
   " FANCY VIM PLUGINS
   " https://danyspin97.org/blog/fancy-vim-plugins/

   " Highlighting
   "{
      " [rainbow](https://github.com/luochen1990/rainbow)
      " Rainbow Parentheses Improved, shorter code, no level limit, smooth and
      " fast, powerful configuration.
      Plugin 'luochen1990/rainbow'

      " [vim-illuminate](https://github.com/RRethy/vim-illuminate)
      " illuminate.vim - Vim plugin for selectively illuminating other uses of
      " the current word under the cursor
      Plugin 'RRethy/vim-illuminate'

      " [vim-search-pulse](https://github.com/inside/vim-search-pulse)
      " easily locate the cursor after a search.
      " it pulses every time you scroll the search results by pressing n/N.
      Plugin 'inside/vim-search-pulse'
   "}

   " GIT
   " {
      " [vcscommand](https://github.com/vim-scripts/vcscommand.vim)
      " VIM 7 plugin useful for manipulating files controlled by CVS, SVN, SVK,
      " git, bzr, and hg within VIM, including committing changes and performing
      " diffs using the vimdiff system.
      "Plugin 'vim-scripts/vcscommand.vim'
      "Plugin 'http://repo.or.cz/r/vcscommand.git'
      " :VCSVimDiff
      Plugin 'vcscommand.vim'

      " [vim-fugitive](https://github.com/tpope/vim-fugitive)
      " Fugitive is the premier Vim plugin for Git. Or maybe it's the premier Git
      " plugin for Vim? Either way, it's `so awesome, it should be illegal`.
      " That's why it's called Fugitive.
      Plugin 'tpope/vim-fugitive'

      " [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
      " A Vim plugin which shows a git diff in the sign column. It shows which
      " lines have been added, modified, or removed. You can also preview, stage,
      " and undo individual hunks; and stage partial hunks. The plugin also
      " provides a hunk text object.
      Plugin 'airblade/vim-gitgutter'
   " }

   " Python
   "{
      " Deprecated and replaced by taghelper.
      " [pythonhleper](https://github.com/mgedmin/pythonhelper.vim)
      " Display in the statusline class, function & method the cursor is in.
      "Plugin 'mgedmin/pythonhelper.vim'

      " [taghelper](https://github.com/mgedmin/taghelper.vim)
      " vim plugin that shows the current function/tag in the statusline.
      Plugin 'mgedmin/taghelper.vim'

      " [Pythonsense](https://github.com/jeetsukumaran/vim-pythonsense)
      " Pythonsense is a Vim plugin that provides text objects and motions for
      " Python classes, methods, functions, and doc strings.
      Plugin 'jeetsukumaran/vim-pythonsense'

      " [jedi-vim](https://github.com/davidhalter/jedi-vim)
      " awesome Python autocompletion with VIM
      " git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
      Plugin 'davidhalter/jedi-vim'

      " [vim-flake8](https://github.com/nvie/vim-flake8.git)
      " is a Vim plugin that runs the currently open file through Flake8, a
      " static syntax and style checker for Python source code. It supersedes
      " both vim-pyflakes and vim-pep8.
      Plugin 'nvie/vim-flake8'

      " [semshi](https://github.com/numirias/semshi)
      " Semantic Highlighting for Python in Neovim
      "Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
      "Plugin 'numirias/semshi'
   "}

   " Rust
   "{
      " [rust](https://github.com/rust-lang/rust.vim)
      " Vim configuration for Rust
      Plugin 'rust-lang/rust.vim'
   "}

   " JSON
   " {
      " [vim-json](https://github.com/elzr/vim-json)
      " A better JSON for Vim: distinct highlighting of keywords vs values,
      " JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
      " https://github.com/elzr/vim-json
      Plugin 'elzr/vim-json'
   " }

   " XPath
   " {
      " [vim-xpath](https://github.com/actionshrimp/vim-xpath)
      " XPath search plugin for Vim
      " https://github.com/actionshrimp/vim-xpath
      Plugin 'actionshrimp/vim-xpath'
   " }

   " HTML
   "{
      " [sparkup](https://github.com/rstacruz/sparkup)
      " A parser for a condensed HTML format
      " Pass the path to set the runtimepath properly.
      Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   "}


   """""""""""""""""""""""""""""""""""""
   " Under testing, waiting for approval.

   " [fzf](https://github.com/junegunn/fzf)
   " fzf is a general-purpose command-line fuzzy finder
   Plugin 'junegunn/fzf'

   " [coc](https://github.com/neoclide/coc.nvim)
   " Make your Vim/Neovim as smart as VSCode.
   "Plugin 'neoclide/coc.nvim'

   " [ale](https://github.com/dense-analysis/ale)
   " Asynchronous Lint Engine
   Plugin 'dense-analysis/ale'

   " [CTRL-P](https://github.com/ctrlpvim/ctrlp.vim)
   " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
   " https://ctrlpvim.github.io/ctrlp.vim/
   "Plugin 'ctrlpvim/ctrlp.vim'

   " Nim
   " {
      " [nim](https://github.com/zah/nim.vim)
      " Nim language plugin for vim.
      Plugin 'zah/nim.vim'
   " }

   " TypeScript & React
   "{
      " [Modern TypeScript and React Development in Vim](https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim)

      " [vim-jsx-typescript](https://github.com/peitalin/vim-jsx-typescript)
      " Syntax highlighting and indentation for JSX in Typescript
      " (typescriptreact filetypes).
      " vim-jsx-typescript works with the built-in typescript syntax
      " highlighter and indentation engine for recent versions of Vim/Neovim.
      Plugin 'peitalin/vim-jsx-typescript'

      Plugin 'pangloss/vim-javascript'
      Plugin 'leafgarland/typescript-vim'
      Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
      Plugin 'jparise/vim-graphql'
 
      " set filetypes as typescriptreact
      autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
   "}

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


" Vundle
" {
   let g:rainbow_active = 1
   let g:Illuminate_delay = 250
   let g:vim_search_pulse_duration = 200

   " Tagbar
   "{
     let g:tagbar_ctags_bin="$HOME/.local/bin/ctags"
   "}
 
   " ALE {
      " [How can I show errors or warnings in my statusline](https://github.com/dense-analysis/ale#5vii-how-can-i-show-errors-or-warnings-in-my-statusline)
      let g:airline#extensions#ale#enabled = 1
   " }

   " Sneak {
      let g:sneak#label = 1
      nmap f <Plug>Sneak_s
      nmap F <Plug>Sneak_S
   " }

   " Using `ugrep` with CtrlP {
      if executable('ugrep')
         set runtimepath^=~/.vim/bundle/ctrlp.vim
         let g:ctrlp_match_window='bottom,order:ttb'
         "let g:ctrlp_user_command='ugrep "" %s -Rl -I --ignore-files -3'
         let g:ctrlp_user_command='ugrep "" %s -Rl -I --ignore-files'
      endif
   " }
 
   " Buffer Explorer {
      let g:bufExplorerSortBy='mru'
   " }
" }


" {
  " from nvim :h vim_diff.txt
  " neovim remaps Y to y$ which I hate.
  if has('nvim')
    unmap Y
  endif
  " [Nuking most of my .vimrc and just using LunarVim](https://fnune.com/2021/11/20/nuking-most-of-my-vimrc-and-just-using-lunarvim/)
  " Disable ex mode
  nnoremap Q <nop>
" }


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

   " Command Mode auto completion {}
     " [Is there a version of Vim or plugin with a Command Mode auto completion?](https://vi.stackexchange.com/a/11424)
     set wildmenu
     set wildmode=longest,list,full
   " }
 
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
   if !has('nvim')
      "set statusline+=%{TagInStatusLine()}   " from https://github.com/mgedmin/pythonhelper.vim
      set statusline+=%{taghelper#curtag()}
   endif
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
   abbr hashHeader # @file# @brief## @author Samuel Larkin## Traitement multilingue de textes / Multilingual Text Processing# Centre de recherche en technologies numériques / Digital Technologies Research Centre# Conseil national de recherches Canada / National Research Council Canada# Copyright 2023, Sa Majeste la Reine du Chef du Canada# Copyright 2023, Her Majesty in Right of Canada

   abbr cHeader /** * @author Samuel Larkin * @file prog.cc * @brief Briefly describe your program here. * * * Traitement multilingue de textes / Multilingual Text Processing * Centre de recherche en technologies numériques / Digital Technologies Research Centre * Conseil national de recherches Canada / National Research Council Canada * Copyright 2023, Sa Majeste la Reine du Chef du Canada * Copyright 2023, Her Majesty in Right of Canada*/

   abbr makeHeader #!/usr/bin/make -f# vim:noet:ts=3:nowrap:filetype=make-include Makefile.params.DEFAULT_GOAL := all.PHONY: allall:.PHONY: cleanclean:
" }


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


" Vim UI {
   " http://vim.wikia.com/wiki/Switch_color_schemes
   " Colors {
      :highlight Comment ctermfg=6 ctermbg=black
      set t_Co=256
      "colorscheme asu1dark
      colorscheme desertink

      " [Xterm256 color names for console Vim](https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim)
      " dark red
      hi tsxTagName ctermfg=52
      hi tsxComponentName ctermfg=52
      hi tsxCloseComponentName ctermfg=52

      " orange
      hi tsxCloseString ctermfg=214
      hi tsxCloseTag ctermfg=214
      hi tsxCloseTagName ctermfg=214
      hi tsxAttributeBraces ctermfg=214
      hi tsxEqual ctermfg=214

      " yellow
      hi tsxAttrib ctermfg=190
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

" [Using ugrep within Vim](https://github.com/Genivia/ugrep#using-ugrep-within-vim) {
   " :grep PATTERN [PATH]
   " :grep PATTERN %
   " :copen
   if executable('ugrep')
      set grepprg=ugrep\ -RInk\ -j\ -u\ --tabs=1\ --ignore-files
      set grepformat=%f:%l:%c:%m,%f+%l+%c+%m,%-G%f\\\|%l\\\|%c\\\|%m
   endif
" }


" {
   " Do not expand tabs when editing a Makefile.
   autocmd BufRead,BufNewFile Makefile set noexpandtab

   autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
   " I prefer to enable this when I enter a JavaScript or TypeScript buffer,
   " and disable it when I leave
   autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
   autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
   autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" }

" Disable Bell
" {
   set visualbell
   set t_vb=
" }
