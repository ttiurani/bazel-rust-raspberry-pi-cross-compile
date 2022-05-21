# bazel-rust-raspberry-pi-cross-compile
Example on how cross-compilation fails on Linux with a Hello World Rust program, when trying to target 64bit ARM (Rasperry Pi 3).

## Building to the Same Platform

```shell
$ bazel build //:hello
$ ./bazel-bin/hello
Hello World!
```

## Building to Raspberry Pi on Linux

```shell
$ bazel build //:hello --platforms //:arm64-linux --toolchain_resolution_debug=
INFO: ToolchainResolution: Target platform //:arm64-linux: Selected execution platform @local_config_platform//:host,
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_darwin_aarch64//:toolchain_for_aarch64-apple-darwin_impl; mismatching values: osx
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_darwin_aarch64//:toolchain_for_wasm32-unknown-unknown_impl; mismatching values: wasm32, unknown
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_darwin_aarch64//:toolchain_for_wasm32-wasi_impl; mismatching values: wasm32, wasi
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: execution platform @local_config_platform//:host: Rejected toolchain @rust_linux_aarch64//:toolchain_for_aarch64-unknown-linux-gnu_impl; mismatching values: arm64, linux
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_linux_aarch64//:toolchain_for_wasm32-unknown-unknown_impl; mismatching values: wasm32, unknown
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_linux_aarch64//:toolchain_for_wasm32-wasi_impl; mismatching values: wasm32, wasi
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_darwin_x86_64//:toolchain_for_x86_64-apple-darwin_impl; mismatching values: x86_64, osx
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_darwin_x86_64//:toolchain_for_wasm32-unknown-unknown_impl; mismatching values: wasm32, unknown
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_darwin_x86_64//:toolchain_for_wasm32-wasi_impl; mismatching values: wasm32, wasi
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @local_config_cc//:cc-compiler-armeabi-v7a; mismatching values: arm, android
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_windows_x86_64//:toolchain_for_x86_64-pc-windows-msvc_impl; mismatching values: x86_64, windows
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @local_config_cc//:cc-compiler-darwin; mismatching values: x86_64, osx
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_windows_x86_64//:toolchain_for_wasm32-unknown-unknown_impl; mismatching values: wasm32, unknown
INFO: ToolchainResolution:   Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: No toolchains found.
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_windows_x86_64//:toolchain_for_wasm32-wasi_impl; mismatching values: wasm32, wasi
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_freebsd_x86_64//:toolchain_for_x86_64-unknown-freebsd_impl; mismatching values: x86_64, freebsd
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_freebsd_x86_64//:toolchain_for_wasm32-unknown-unknown_impl; mismatching values: wasm32, unknown
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_freebsd_x86_64//:toolchain_for_wasm32-wasi_impl; mismatching values: wasm32, wasi
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_linux_x86_64//:toolchain_for_x86_64-unknown-linux-gnu_impl; mismatching values: x86_64
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_linux_x86_64//:toolchain_for_wasm32-unknown-unknown_impl; mismatching values: wasm32, unknown
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @rust_linux_x86_64//:toolchain_for_wasm32-wasi_impl; mismatching values: wasm32, wasi
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @my_rust_apple_x86_64//:toolchain_for_x86_64-apple-darwin_impl; mismatching values: x86_64, osx
INFO: ToolchainResolution:   Type @rules_rust//rust:toolchain: target platform //:arm64-linux: execution @local_config_platform//:host: Selected toolchain @my_rust_apple_x86_64//:toolchain_for_aarch64-unknown-linux-gnu_impl
INFO: ToolchainResolution:     Type @rules_rust//rust:toolchain: target platform //:arm64-linux: Rejected toolchain @my_rust_linux_x86_64//:toolchain_for_x86_64-unknown-linux-gnu_impl; mismatching values: x86_64
ERROR: .../bazel-rust-raspberry-pi-cross-compile/BUILD:13:12: While resolving toolchains for target //:hello: No matching toolchains found for types @bazel_tools//tools/cpp:toolchain_type. Maybe --incompatible_use_cc_configure_from_rules_cc has been flipped and there is no default C++ toolchain added in the WORKSPACE file? See https://github.com/bazelbuild/bazel/issues/10134 for details and migration instructions.
ERROR: Analysis of target '//:hello' failed; build aborted:
INFO: Elapsed time: 0.096s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (1 packages loaded, 1 target configured)
```
