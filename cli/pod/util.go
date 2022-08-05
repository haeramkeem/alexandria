package pod

import (
    "fmt"
    "os"
)

func ErrorExit(msg string) {
    fmt.Fprintf(os.Stderr, "Error: %s\n\n", msg)
    fmt.Fprintf(os.Stderr, "[Usage]\n")
    fmt.Fprintf(os.Stderr, "    yammy pod [OPTIONS] [ARGS]\n")
    os.Exit(1)
}
