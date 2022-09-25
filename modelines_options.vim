"------------------------------------------------------------------------------
"  Description: Options setable by the Modeline bundle
"    Copyright: Copyright (C) 2006 … 2022 Martin Krischik
"   Maintainer:	Martin Krischik
" Last Changed: Monday, 01 Sep 2022
"      Version: 3.1
"        Usage: install with dein
"      History:	17.09.2007 MK change to bundle use NERD_Commenter when
"		              available  
"               01.09.2022 MK Change to GitHub delivery. 
"		01.09.2022 MK Use GitHub und dein to publish new versions
"		25.09.2022 MK Add spell language and file encoding
"		25.09.2022 MK update nerdcommenter 
"	 Usage: copy content into your .vimrc and change options to your
"		likeing.
"------------------------------------------------------------------------------

echoerr 'It is suggested to copy the content of modeline_options into .vimrc!'
finish " 1}}}

" Section: Modelines options {{{1

   let g:mapleader	   = "<F12>"

" }}}1

" Section: Vimball options {{{1
:set noexpandtab fileformat=unix encoding=utf-8
:.+2,.+4 MkVimball modeline-2.0.vba

modeline_options.vim
plugin/modeline.vim
autoload/modeline.vim

" }}}1

" Section: Tar options {{{1

tar --create --bzip2		 \
   --file="modeline-2.0.tar.bz2" \
   modeline_options.vim		 \
   plugin/modeline.vim		 \
   autoload/modeline.vim	 ;

" }}}1

" Section: Quick Installation {{{1

gcp --verbose --update autoload/modelines.vim  ~/vimfiles/bundles/.cache/.vimrc/.dein/autoload/modelines.vim 
gcp --verbose --update modelines_options.vim   ~/vimfiles/bundles/.cache/.vimrc/.dein/modelines_options.vim  
gcp --verbose --update plugin/modelines.vim    ~/vimfiles/bundles/.cache/.vimrc/.dein/plugin/modelines.vim   

" }}}1

"------------------------------------------------------------------------------
"   Vim is Charityware - see ":help license" or uganda.txt for licence details.
"------------------------------------------------------------------------------
" vim: set textwidth=78 nowrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab :
" vim: set filetype=vim fileencoding=utf-8 fileformat=unix foldmethod=marker :
" vim: set spell spelllang=en_gb :
