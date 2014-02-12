"=============================================================================
" File: lisper.vim
" Author: Yasuhiro Matsumoto <mattn.jp@gmail.com>
" Last Change: 03-Jul-2012.
" Version: 0.03
"

function! L(expr)
  return lisper#eval(a:expr)
endfunction

function! V(expr)
  return split(strpart(a:expr, 1, len(a:expr)-2))
endfunction

function! S(expr)
  return lisper#stringer(a:expr)
endfunction

command! LisperRepl call lisper#repl()
command! -nargs=+ L echo lisper#eval(<q-args>)
command! LisperEvalLine echo lisper#eval(getline('.'))
command! -range=% LisperEvalBuffer echo lisper#eval("(begin\n".join(getline(<line1>, <line2>), "\n")."\n)")
command! -range=% LisperEvalBufferWithoutOutput call lisper#eval("(begin\n".join(getline(<line1>, <line2>), "\n")."\n)")
command! LisperVimBang call lisper#bang(expand('<sfile>'))|finish

" vim:set et:
