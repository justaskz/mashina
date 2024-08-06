package cli

import (
	"fmt"

	"github.com/alecthomas/kingpin"
	"github.com/justaskz/mashina/internal/wip"
)

var (
	app        = kingpin.New("mashina", "Description mashina")
	cmdInit    = app.Command("init", "Description init")
	cmdInstall = app.Command("install", "Description install")
)

func Init(args []string) {
	switch kingpin.MustParse(app.Parse(args)) {
	case cmdInit.FullCommand():
		initScript := wip.Init()
		fmt.Println(initScript)
	case cmdInstall.FullCommand():
		// url := "https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-aarch64-macos.tar.xz"
		// location := "/tmp/mashina"
		// pack.Install(url, location)
		fmt.Println("install")
	}
}
