"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__bumpalo__3_9_1",
        url = "https://crates.io/api/v1/crates/bumpalo/3.9.1/download",
        type = "tar.gz",
        sha256 = "a4a45a46ab1f2412e53d3a0ade76ffad2025804294569aae387231a0cd6e0899",
        strip_prefix = "bumpalo-3.9.1",
        build_file = Label("//third_party/cargo/remote:BUILD.bumpalo-3.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_73",
        url = "https://crates.io/api/v1/crates/cc/1.0.73/download",
        type = "tar.gz",
        sha256 = "2fff2a6927b3bb87f9595d67196a70493f627687a71d87a0d692242c33f58c11",
        strip_prefix = "cc-1.0.73",
        build_file = Label("//third_party/cargo/remote:BUILD.cc-1.0.73.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//third_party/cargo/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__js_sys__0_3_57",
        url = "https://crates.io/api/v1/crates/js-sys/0.3.57/download",
        type = "tar.gz",
        sha256 = "671a26f820db17c2a2750743f1dd03bafd15b98c9f30c7c2628c024c05d73397",
        strip_prefix = "js-sys-0.3.57",
        build_file = Label("//third_party/cargo/remote:BUILD.js-sys-0.3.57.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//third_party/cargo/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_126",
        url = "https://crates.io/api/v1/crates/libc/0.2.126/download",
        type = "tar.gz",
        sha256 = "349d5a591cd28b49e1d1037471617a32ddcda5731b99419008085f72d5a53836",
        strip_prefix = "libc-0.2.126",
        build_file = Label("//third_party/cargo/remote:BUILD.libc-0.2.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_17",
        url = "https://crates.io/api/v1/crates/log/0.4.17/download",
        type = "tar.gz",
        sha256 = "abb12e687cfb44aa40f41fc3978ef76448f9b6038cad6aef4259d3c095a2382e",
        strip_prefix = "log-0.4.17",
        build_file = Label("//third_party/cargo/remote:BUILD.log-0.4.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__once_cell__1_12_0",
        url = "https://crates.io/api/v1/crates/once_cell/1.12.0/download",
        type = "tar.gz",
        sha256 = "7709cef83f0c1f58f666e746a08b21e0085f7440fa6a29cc194d68aac97a4225",
        strip_prefix = "once_cell-1.12.0",
        build_file = Label("//third_party/cargo/remote:BUILD.once_cell-1.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_39",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.39/download",
        type = "tar.gz",
        sha256 = "c54b25569025b7fc9651de43004ae593a75ad88543b17178aa5e1b9c4f15f56f",
        strip_prefix = "proc-macro2-1.0.39",
        build_file = Label("//third_party/cargo/remote:BUILD.proc-macro2-1.0.39.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_18",
        url = "https://crates.io/api/v1/crates/quote/1.0.18/download",
        type = "tar.gz",
        sha256 = "a1feb54ed693b93a84e14094943b84b7c4eae204c512b7ccb95ab0c66d278ad1",
        strip_prefix = "quote-1.0.18",
        build_file = Label("//third_party/cargo/remote:BUILD.quote-1.0.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ring__0_16_20",
        url = "https://crates.io/api/v1/crates/ring/0.16.20/download",
        type = "tar.gz",
        sha256 = "3053cf52e236a3ed746dfc745aa9cacf1b791d846bdaf412f60a8d7d6e17c8fc",
        strip_prefix = "ring-0.16.20",
        build_file = Label("//third_party/cargo/remote:BUILD.ring-0.16.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__spin__0_5_2",
        url = "https://crates.io/api/v1/crates/spin/0.5.2/download",
        type = "tar.gz",
        sha256 = "6e63cff320ae2c57904679ba7cb63280a3dc4613885beafb148ee7bf9aa9042d",
        strip_prefix = "spin-0.5.2",
        build_file = Label("//third_party/cargo/remote:BUILD.spin-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_95",
        url = "https://crates.io/api/v1/crates/syn/1.0.95/download",
        type = "tar.gz",
        sha256 = "fbaf6116ab8924f39d52792136fb74fd60a80194cf1b1c6ffa6453eef1c3f942",
        strip_prefix = "syn-1.0.95",
        build_file = Label("//third_party/cargo/remote:BUILD.syn-1.0.95.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_ident__1_0_0",
        url = "https://crates.io/api/v1/crates/unicode-ident/1.0.0/download",
        type = "tar.gz",
        sha256 = "d22af068fba1eb5edcb4aea19d382b2a3deb4c8f9d475c589b6ada9e0fd493ee",
        strip_prefix = "unicode-ident-1.0.0",
        build_file = Label("//third_party/cargo/remote:BUILD.unicode-ident-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__untrusted__0_7_1",
        url = "https://crates.io/api/v1/crates/untrusted/0.7.1/download",
        type = "tar.gz",
        sha256 = "a156c684c91ea7d62626509bce3cb4e1d9ed5c4d978f7b4352658f96a4c26b4a",
        strip_prefix = "untrusted-0.7.1",
        build_file = Label("//third_party/cargo/remote:BUILD.untrusted-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen__0_2_80",
        url = "https://crates.io/api/v1/crates/wasm-bindgen/0.2.80/download",
        type = "tar.gz",
        sha256 = "27370197c907c55e3f1a9fbe26f44e937fe6451368324e009cba39e139dc08ad",
        strip_prefix = "wasm-bindgen-0.2.80",
        build_file = Label("//third_party/cargo/remote:BUILD.wasm-bindgen-0.2.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_backend__0_2_80",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-backend/0.2.80/download",
        type = "tar.gz",
        sha256 = "53e04185bfa3a779273da532f5025e33398409573f348985af9a1cbf3774d3f4",
        strip_prefix = "wasm-bindgen-backend-0.2.80",
        build_file = Label("//third_party/cargo/remote:BUILD.wasm-bindgen-backend-0.2.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro__0_2_80",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro/0.2.80/download",
        type = "tar.gz",
        sha256 = "17cae7ff784d7e83a2fe7611cfe766ecf034111b49deb850a3dc7699c08251f5",
        strip_prefix = "wasm-bindgen-macro-0.2.80",
        build_file = Label("//third_party/cargo/remote:BUILD.wasm-bindgen-macro-0.2.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro_support__0_2_80",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro-support/0.2.80/download",
        type = "tar.gz",
        sha256 = "99ec0dc7a4756fffc231aab1b9f2f578d23cd391390ab27f952ae0c9b3ece20b",
        strip_prefix = "wasm-bindgen-macro-support-0.2.80",
        build_file = Label("//third_party/cargo/remote:BUILD.wasm-bindgen-macro-support-0.2.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_shared__0_2_80",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-shared/0.2.80/download",
        type = "tar.gz",
        sha256 = "d554b7f530dee5964d9a9468d95c1f8b8acae4f282807e7d27d4b03099a46744",
        strip_prefix = "wasm-bindgen-shared-0.2.80",
        build_file = Label("//third_party/cargo/remote:BUILD.wasm-bindgen-shared-0.2.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__web_sys__0_3_57",
        url = "https://crates.io/api/v1/crates/web-sys/0.3.57/download",
        type = "tar.gz",
        sha256 = "7b17e741662c70c8bd24ac5c5b18de314a2c26c32bf8346ee1e6f53de919c283",
        strip_prefix = "web-sys-0.3.57",
        build_file = Label("//third_party/cargo/remote:BUILD.web-sys-0.3.57.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )
