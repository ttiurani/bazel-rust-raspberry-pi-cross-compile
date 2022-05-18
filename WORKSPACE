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
    sha256 = "929d2eea04ec752f03f1f3b8e44c9ca1901ad2902e1e366847032765835c9730",
    strip_prefix = "rules_rust-2fa92e5a139c7cb64d606718273e295ce756f0f3",
    urls = [
        # Change to rules_rust upstream with one extra commit
        "https://github.com/ttiurani/rules_rust/archive/2fa92e5a139c7cb64d606718273e295ce756f0f3.tar.gz",
    ],
)

load("@rules_rust//rust:repositories.bzl", "rust_register_toolchains", "rust_repository_set")
RUST_VERSION = "1.56.1"
rust_register_toolchains(version = RUST_VERSION, edition="2018", rustfmt_version = RUST_VERSION)
rust_repository_set(
    name = "extendedmind_rust_apple_x86_64",
    edition = "2018",
    version = RUST_VERSION,
    rustfmt_version = RUST_VERSION,
    exec_triple = "x86_64-apple-darwin",
    extra_target_triples=[
        "aarch64-unknown-linux-gnu",
    ],
)

rust_repository_set(
    name = "extendedmind_rust_linux_x86_64",
    edition = "2018",
    version = RUST_VERSION,
    rustfmt_version = RUST_VERSION,
    exec_triple = "x86_64-unknown-linux-gnu",
    extra_target_triples=[
        "aarch64-unknown-linux-gnu",
    ],
)
