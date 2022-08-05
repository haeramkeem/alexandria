package pod

import (
    "fmt"
    "reflect"
    flags "github.com/jessevdk/go-flags"
)

type Options struct{
    Include []string `short:"i" long:"include" description:"Additional pod's fields you want to include"`
}

type Field struct{
    // .metadata.annotations
    Annotations     bool    `synonym:"annotations,annotation"`

    // .spec.containers[].args
    Args            bool    `synonym:"args,arg"`

    // .spec.containers[].env
    Env             bool    `synonym:"envs,env"`

    // .spec.containers[].resources
    Resources       bool    `synonym:"resources,resource"`

    // .spec.containers[].volumeMounts
    VolumeMounts    bool    `synonym:"volumeMounts,volumeMount"`

    // .spec.securityContext
    SecurityContext bool    `synonym:"securityContext"`

    // .spec.tolerations
    Tolerations     bool    `synonym:"tolerations,toleration"`

    // .spec.volumes
    Volumes         bool    `synonym:"volumes,volume"`
}

func (pod *Field) Init() *Field {
    return &Field{}
}

func (pod *Field) ParseArgs(args []string) {
    var options Options

    if _, err := flags.ParseArgs(&options, args); err != nil {
        ErrorExit(err.Error())
    }

    ref := reflect.TypeOf(*pod)
    for _, arg := range options.Include {
        for i := 0; i < ref.NumField(); i++ {
            fmt.Println(ref.Field(i).Tag.Get("synonym"))
            fmt.Println(arg)
        }
    }
}

func (pod *Field) Yaml() {
    fmt.Println(*pod)
}
