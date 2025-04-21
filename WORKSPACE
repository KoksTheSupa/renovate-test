load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "libwebp",
    build_file = "//third-party/webp:libwebp.BUILD",
    sha256 = "01bcde6a40a602294994050b81df379d71c40b7e39c819c024d079b3c56307f4",
    strip_prefix = "libwebp-1.2.1",
    urls = [
        "https://storage.googleapis.com/mirror.tensorflow.org/github.com/webmproject/libwebp/archive/v1.2.1.tar.gz",
        "https://github.com/webmproject/libwebp/archive/v1.2.1.tar.gz",
    ],
)

http_archive(
    name = "build_stack_rules_proto",
    patch_args = ["-p1"],
    patches = ["//build/bazel/patches:build_stack_rules_proto_protobuf_28_1.patch"],
    sha256 = "b7cbaf457d91e1d3c295df53b80f24e1d6da71c94ee61c42277ab938db6d1c68",
    strip_prefix = "rules_proto-3.2.0",
    url = "https://github.com/stackb/rules_proto/archive/refs/tags/v3.2.0.tar.gz",
)

register_toolchains("@build_stack_rules_proto//toolchain:prebuilt")

load("@build_stack_rules_proto//deps:prebuilt_protoc_deps.bzl", "prebuilt_protoc_deps")

prebuilt_protoc_deps()
