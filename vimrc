syntax on

call pathogen#infect()

filetype plugin indent on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

""" enable automated html,xml,xsl closetag script
if has("autocmd")
  au Filetype html,xml,xsl source ~/.vim/closetag.vim
  au FileType html         set noignorecase " as advised by closetag.vim
endif

""" make smaller indentation for html
if has("autocmd")
  au FileType html set sw=2
  au FileType html set ts=2
endif

""" CSS Has mostly the depth of one therefore keep it at 4 spaces per tab
""" This way I can still see which tag/id/class something is part of but still
""" distinguish the two
if has("autocmd")
  au FileType css  set sw=8
  au FileType css  set ts=8
endif

if has("autocmd")
  au FileType vim  set sw=2
  au FileType vim  set ts=2
endif
	
if has("autocmd")
  au FileType haml  set sw=2
  au FileType haml  set ts=2
endif
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd	  	" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set noexpandtab 	" i want tabs instead of spaces
