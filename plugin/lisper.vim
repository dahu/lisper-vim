"=============================================================================
" File: lisper.vim
" Author: Yasuhiro Matsumoto <mattn.jp@gmail.com>
" Last Change: 22-Nov-2011.
" Version: 0.01
"
command! LisperRepl call lisper#repl()
command! LisperEvalLine echo lisper#eval(getline('.'))
command! -range=% LisperEvalBuffer echo lisper#eval(join(getline(<line1>, <line2>), "\n"))
command! -range=% LisperEvalBufferWithoutOutput call lisper#eval(join(getline(<line1>, <line2>), "\n"))

" vim:set et:
