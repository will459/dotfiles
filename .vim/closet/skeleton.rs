#![deny(
    absolute_paths_not_starting_with_crate,
    macro_use_extern_crate,
    missing_abi,
    missing_debug_implementations,
    non_ascii_idents,
    pointer_structural_match,
    trivial_numeric_casts,
    unreachable_pub,
    unsafe_code,
    unsafe_op_in_unsafe_fn,
    unused_lifetimes
)]
#![warn(
    missing_docs,
    noop_method_call,
    unused_crate_dependencies,
    unused_extern_crates,
    unused_import_braces
)]

#[cfg(test)]
mod tests {
    #[test]
    fn test_a() {
        assert!(true);
    }
}
