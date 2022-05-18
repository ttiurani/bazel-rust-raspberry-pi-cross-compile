load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.2.0/bazel-skylib-1.2.0.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.0/bazel-skylib-1.2.0.tar.gz",
    ],
    sha256 = "af87959afe497dc8dfd4c6cb66e1279cb98ccc84284619ebfec27d9c09a903de",
)
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
bazel_skylib_workspace()

# Rust
http_archive(
    name = "rules_rust",
    sha256 = "edb87c0d2ba70823fe3df7862676d695599314a4634b9758bd55f0e8f19c2751",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_rust/releases/download/0.4.0/rules_rust-v0.4.0.tar.gz",
        "https://github.com/bazelbuild/rules_rust/releases/download/0.4.0/rules_rust-v0.4.0.tar.gz",
    ],
)
load("@rules_rust//rust:repositories.bzl", "rules_rust_dependencies", "rust_register_toolchains", "rust_repository_set")
rules_rust_dependencies()

RUST_VERSION = "1.56.1"
rust_register_toolchains(version = RUST_VERSION, edition="2018", rustfmt_version = RUST_VERSION)
rust_repository_set(
    name = "my_rust_apple_x86_64",
    edition = "2018",
    version = RUST_VERSION,
    rustfmt_version = RUST_VERSION,
    exec_triple = "x86_64-apple-darwin",
    extra_target_triples=[
        "aarch64-unknown-linux-gnu",
    ],
)

rust_repository_set(
    name = "my_rust_linux_x86_64",
    edition = "2018",
    version = RUST_VERSION,
    rustfmt_version = RUST_VERSION,
    exec_triple = "x86_64-unknown-linux-gnu",
    extra_target_triples=[
        "aarch64-unknown-linux-gnu",
    ],
)
