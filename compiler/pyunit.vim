" Vim compiler file
" Compiler:	Unit testing tool for Python unittest.
" Author:	Alisue <lambdalisue@hashnote.net>
" Updated to use unittest module by Walter Scheper

if exists("current_compiler")
  finish
endif
let current_compiler = "pyunit"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ \=\-]%\\@=%m,%-G%.%#
CompilerSet makeprg=echo\ $*\ >\ /dev/null;\ python\ -m\ unittest


