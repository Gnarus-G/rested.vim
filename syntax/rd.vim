if exists("b:current_syntax")
  finish
endif

syn keyword basicItems set get post
syn keyword basicTypes header body

syn region callParams start="(" end=")" transparent fold
syn region block start="{" end="}" transparent fold

syn match endpoint "\(https\?\|\/\)\S*"
syn match attribute "@\I*"

syn region string oneline start=/"/ end=/"/
syn region string start='`' end='`'

syn match ident /\<\I*/ display
syn match call /\<[a-z]\w*\s*\ze(/ display

syn match comment /\(:\)\@<!\/\/.*$/

hi def link string String
hi def link comment Comment
hi def link attribute PreProc
hi def link ident Identifier
hi def link endpoint Identifier
hi def link call Function
hi def link basicItems Keyword
hi def link basicTypes Type

let b:current_syntax = "rd"
