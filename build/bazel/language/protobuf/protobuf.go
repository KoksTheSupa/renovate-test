package protobuf

import (
	"github.com/bazelbuild/bazel-gazelle/language"
	stackbProtobuf "github.com/stackb/rules_proto/language/protobuf"
)

func NewLanguage() language.Language {
	return stackbProtobuf.NewLanguage()
}
