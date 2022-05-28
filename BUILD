package(default_visibility = ["//visibility:public"])

load("@rules_rust//rust:defs.bzl", "rust_binary")

platform(
	name = "arm64-linux",
	constraint_values = [
		"@platforms//cpu:aarch64",
		"@platforms//os:linux",
	],
)

rust_binary(
    name = "hello",
    srcs = glob(["src/**"]),
    deps = ["//third_party/cargo:ring"],
)

