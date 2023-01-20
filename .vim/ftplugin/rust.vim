let b:ale_linters = ['analyzer', 'cargo']
let b:ale_fixers = ['rustfmt', 'trim_whitespace', 'remove_trailing_lines']

" Rust-vim settings
let g:rust_fold = 1
let g:rustfmt_autosave = 1
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
let g:ale_rust_cargo_check_all_targets=1
let g:ale_rust_cargo_check_tests=1
let g:ale_rust_cargo_check_examples=1
let g:ale_rust_cargo_default_feature_behavior='all'
