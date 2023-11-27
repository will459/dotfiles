if exists("b:did_ftplugin_yaml")
  finish
endif
let b:did_ftplugin_yaml = 1

let b:ale_fixers = ['trim_whitespace']

let b:ale_fix_on_save=1

setlocal expandtab
setlocal tabstop=2
setlocal softtabstop=2
setlocal smarttab
setlocal shiftwidth=2
