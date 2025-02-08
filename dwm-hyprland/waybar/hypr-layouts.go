// unfortunately runtime is 9ms which could be better but it's mostly bc ```hyprctl activewindow``` takes 7ms to run itself	
// useful places: line 13 for regexp; fmt.Printf statements at line 35; try not to include newline at the end;	
package main

import (
	"fmt"
	"os"
	"os/exec"
	"regexp"
)

var (
	floatingRegexp = regexp.MustCompile(`\Wfloating: (.*)`)
	monocleRegexp  = regexp.MustCompile(`\Wfullscreen: (.*)`)
)

func strIntToBool(num *string) bool { //lol
	if *num == "1" {
		return true
	}
	return false
}
func main() {
	full, err := exec.Command("hyprctl", "activewindow").Output()
	if err != nil {
		fmt.Printf("%s", err)
	}
	out := string(full[:])
	if len(out) < 20 {
		fmt.Printf("[]=")
		os.Exit(0)
	}

	isFloat := strIntToBool(&floatingRegexp.FindStringSubmatch(out)[1])
	isMonocle := strIntToBool(&monocleRegexp.FindStringSubmatch(out)[1])
	// fullscreenRegexp := regexp.MustCompile(`\Wfakefullscreen: (.*)`)
	// isFullscreen := strIntToBool(&fullscreenRegexp.FindStringSubmatch(out)[1])
	// 2l above are useless bc u dont see the bar
	if isFloat && !isMonocle {
		fmt.Printf("&gt;&lt;&gt;")
	} else if isMonocle && !isFloat {
		fmt.Printf("[M]")
	} else {
		fmt.Printf("[]=")
	}
}
