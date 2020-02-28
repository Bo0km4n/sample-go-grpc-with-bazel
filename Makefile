.PHONY: gazelle
gazelle:
	bazel run //:gazelle

.PHONY: build
build:
	bazel ${BZFLAGS} build -k -- //proto/... //pkg/...
