load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "libwebp",
    build_file = "//third-party/webp:libwebp.BUILD",
    sha256 = "668c9aba45565e24c27e17f7aaf7060a399f7f31dba6c97a044e1feacb930f37",
    strip_prefix = "libwebp-1.5.0",
    urls = [
        "https://storage.googleapis.com/mirror.tensorflow.org/github.com/webmproject/libwebp/archive/v1.5.0.tar.gz",
        "https://github.com/webmproject/libwebp/archive/v1.5.0.tar.gz",
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
