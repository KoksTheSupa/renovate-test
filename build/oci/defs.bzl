load("//build/oci:bundle.bzl", _container_bundle = "container_bundle")
load("//build/oci:image.bzl", _go_image = "go_image")
load("//build/oci:push.bzl", _container_push = "container_push")

container_bundle = _container_bundle
go_image = _go_image
container_push = _container_push
