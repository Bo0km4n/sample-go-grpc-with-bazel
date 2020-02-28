load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@bazel_gazelle//:def.bzl", "gazelle")

# gazelle:exclude docs
# gazelle:build_file_name BUILD.bazel
# gazelle:prefix github.com/Bo0km4n/sample-go-grpc-with-bazel

gazelle(name = "gazelle")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/Bo0km4n/sample-go-grpc-with-bazel",
    visibility = ["//visibility:private"],
    deps = ["//pkg:go_default_library"],
)

go_binary(
    name = "sample-go-grpc-with-bazel",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
