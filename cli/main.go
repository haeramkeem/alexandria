package main

import (
    "os"
    "fmt"
    "reflect"
    "strings"
    "github.com/haeramkeem/yammy/cli/pod"
)

var kind struct{
    Pod    *pod.Field      `synonym:"pods,pod,po,"`
}

type iface interface {
    Init()
    ParseArgs([]string)
    Yaml()
}

func errorExit(msg string) {
    fmt.Fprintf(os.Stderr, "Error: %s\n\n", msg)
    fmt.Fprintf(os.Stderr, "[Usage]\n")
    fmt.Fprintf(os.Stderr, "    yammy [OBJECT_KIND] [SUBCOMMANDS]\n")
    os.Exit(1)
}

func main() {
    if len(os.Args) < 2 {
        errorExit("Please specify the object kind")
    }

    t := reflect.TypeOf(kind)
    v := reflect.ValueOf(kind)
    for i := 0; i < t.NumField(); i++ {
        if strings.Contains(t.Field(i).Tag.Get("synonym"), os.Args[1]) {
            v.Field(i).Interface().(iface).Init()
        }
    }

    fmt.Println(kind)
}
