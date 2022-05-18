# bazel-rust-raspberry-pi-cross-compile
Example on how to cross compile on OSX and Linux a rust program for 64bit Rasperry Pi 

## Building to the Same Platform

```shell
$ bazel build //:hello
$ ./bazel-bin/hello
Hello World!
```

## Building to Raspberry Pi

```shell
$ bazel build //:hello --platforms //:arm64-linux --toolchain_resolution_debug=@bazel_tools//tools/cpp:toolchain_type
INFO: Build options --platforms and --toolchain_resolution_debug have changed, discarding analysis cache.
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @rules_rust//rust/private/dummy_cc_toolchain:dummy_cc_wasm32; mismatching values: wasm32
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @local_config_cc//:cc-compiler-armeabi-v7a; mismatching values: arm, android
INFO: ToolchainResolution:     Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: Rejected toolchain @local_config_cc//:cc-compiler-darwin; mismatching values: x86_64, osx
INFO: ToolchainResolution:   Type @bazel_tools//tools/cpp:toolchain_type: target platform //:arm64-linux: No toolchains found.
ERROR: .../bazel-rust-raspberry-pi-cross-compile/BUILD:13:12: While resolving toolchains for target //:hello: No matching toolchains found for types @bazel_tools//tools/cpp:toolchain_type. Maybe --incompatible_use_cc_configure_from_rules_cc has been flipped and there is no default C++ toolchain added in the WORKSPACE file? See https://github.com/bazelbuild/bazel/issues/10134 for details and migration instructions.
ERROR: Analysis of target '//:hello' failed; build aborted:
INFO: Elapsed time: 0.140s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (0 packages loaded, 159 targets configured)
```
