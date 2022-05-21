# bazel-rust-raspberry-pi-cross-compile
Example on how to cross-compilate a Hello World Rust program on a x86_64 Linux (Ubuntu latest) Rasperry Pi 3B/3B+ (64bit ARM).

## Building to the Same Platform

```shell
$ bazel build //:hello
$ ./bazel-bin/hello
Hello World!
```

## Building to Raspberry Pi

```shell
$ bazel build //:hello --platforms //:arm64-linux --crosstool_top=//cc_toolchains/aarch64-rpi3-linux-gnu:gcc_toolchain --host_crosstool_top=@bazel_tools//tools/cpp:toolchain --cpu=aarch64 --incompatible_enable_cc_toolchain_resolution
```

## Credits

* [John Millinkin's blog post on Rust cross-compilation](https://john-millikin.com/notes-on-cross-compiling-rust#bazel)
* [Łukasz Tekieli's work on CPP cross compilation](https://ltekieli.com/cross-compiling-with-bazel/), with [configs in Github](https://github.com/ltekieli/bazel_cross_compile)
