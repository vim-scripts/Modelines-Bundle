"-------------------------------------------------------------------------------
"  Description: Insert modelines
"   Maintainer:	Martin Krischik
"    Copyright: Copyright (C) 2006 … 2022 Martin Krischik
" Name Of File: plugin/modelines.vim
" Last Changed: Monday, 01 Sep 2022
"      Version: 3.1
"        Usage: install with dein
"      History: 18.11.2006 MK Bram's suggestion for runtime integration
"		18.11.2006 MK "set: :" syntax for "/* */" languages   
"		17.09.2007 MK change to bundle use NERD_Commenter when
"		              available  
"	        01.09.2022 MK Change to GitHub delivery. 
"		01.09.2022 MK Use GitHub and dein to publish new versions
"		25.09.2022 MK Add spell language and file encoding
"		25.09.2022 MK update nerdcommenter 
"-------------------------------------------------------------------------------

if exists("g:loaded_modlines")
    finish
else
    let g:loaded_modlines=20

    if exists('g:mapleader')
        execute "nnoremap <unique>" . escape(g:mapleader . "im" , '\') .      " :call modelines#Insert ()<CR>"
        execute "inoremap <unique>" . escape(g:mapleader . "im" , '\') . " <C-O>:call modelines#Insert ()<CR>"

        execute "47menu Plugin.Insert.Modelines<Tab>" . escape(g:mapleader . "im" , '\') . " :call modelines#Insert ()<CR>"
    else
        execute "47menu Plugin.Insert.Modelines<Tab>" . "" . " :call modelines#Insert ()<CR>"
    endif
endif

finish

"-------------------------------------------------------------------------------
" vim: set textwidth=0 nowrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab :
" vim: set filetype=vim fileencoding=utf-8 fileformat=unix foldmethod=marker :
" vim: set spell spelllang=en_gb :
