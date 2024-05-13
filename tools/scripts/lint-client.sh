#!/bin/sh

# Call this from the root of the project folder
cd client/src-tauri
cargo fmt -- --check
cargo clippy --all-targets --all-features
cargo check
