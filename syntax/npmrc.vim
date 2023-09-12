scriptencoding utf-8

if exists('b:current_syntax')
  finish
endif

syntax keyword npmrcTodo TODO FIXME XXX NOTE SEE contained
syntax match npmrcComment '^\(#\|;\).*' contains=npmrcTodo
syntax match npmrcComment '\s\(#\|;\).*'ms=s+1 contains=npmrcTodo

syntax match npmrcLine '[^ =]\+ *= *[^ ]\+' contains=npmrcKey,npmrcEqual,npmrcValue

syntax match npmrcKey '[^ =]\+\( *= *\)\@=' contained contains=npmrcScope
syntax match npmrcScope '^@[^ :/]\+\(:\)\@='
syntax match npmrcEqual '\([^ =]\+ *\)\@<==' contained
syntax match npmrcValue '\([^ =]\+ *= *\)\@<=[^ ]\+' contained contains=npmrcBoolean
syntax match npmrcBoolean '\(false\|true\)' contained

highlight default link npmrcTodo Todo
highlight default link npmrcComment Comment

highlight default link npmrcKey Identifier
highlight default link npmrcScope Special
highlight default link npmrcValue String
highlight default link npmrcBoolean Boolean


let b:current_syntax = 'npmrc'

" vim: ts=2 et sw=2
