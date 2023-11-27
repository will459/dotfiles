let b:ale_linters = ['clangd']
let b:ale_fixers = ['clang-format', 'clangtidy', 'trim_whitespace', 'remove_trailing_lines']

let b:ale_cpp_clangd_options='--enable-config'
let b:ale_cpp_clangformat_options='-style file'
let b:ale_fix_on_save=1
