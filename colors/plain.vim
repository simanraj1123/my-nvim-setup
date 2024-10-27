" custom_light_theme.vim

" Set background to light mode
set background=light

" Define the colors
let s:bg = "#f0f0f0"       " light grey background
let s:fg = "#000000"       " black for syntax
let s:comment = "#c80b0b"  " light grey for comments
let s:bold_black = "#000000" " bold black for function and class names

" Apply the colors to highlight groups
hi clear
if exists("syntax_on")
  syntax reset
endif

" Set the basic highlight groups
hi Normal guifg=s:fg guibg=s:bg
hi Comment guifg=s:comment gui=italic
hi Function guifg=s:bold_black gui=bold
hi Identifier guifg=s:bold_black gui=bold

