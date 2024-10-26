" custom_light_theme.vim

" Set background to light mode
set background=light

" Define the colors
let s:bg = "#f0f0f0"       " light grey background
let s:fg = "#000000"       " black for syntax
let s:comment = "#b0b0b0"  " light grey for comments
let s:bold_black = "#000000" " bold black for function and class names

" Apply the colors to highlight groups
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "custom_light_theme"

" Set the basic highlight groups
hi Normal guifg=s:fg guibg=s:bg
hi Comment guifg=s:comment gui=italic
hi Function guifg=s:bold_black gui=bold
hi Identifier guifg=s:bold_black gui=bold

