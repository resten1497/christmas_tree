package main

import (
	"fmt"
	"math/rand"
	"strings"

	"github.com/fatih/color"
)

func main() {
	var height = 7

	green := color.New(color.FgGreen).SprintFunc()
	yellow := color.New(color.FgYellow).SprintFunc()
	red := color.New(color.FgRed).SprintFunc()
	magenta := color.New(color.FgMagenta).SprintFunc()
	bgWhite := color.New(color.BgWhite).SprintFunc()

	for i := 0; i < height; i++ {
		fmt.Println()
		fmt.Print(strings.Repeat(" ", height-i))

		if rand.Intn(5)-2 <= 0 {
			fmt.Print(yellow("*"))
		} else {
			fmt.Print(red("*"))
		}

		for j := 0; j < i; j++ {
			if rand.Intn(4)-2 <= 0 {
				fmt.Print(yellow("*"), red("*"))
			} else {
				fmt.Print(green("**"))
			}

		}
	}

	fmt.Printf(`
      %s%s%s
      %s%s%s
	`, yellow("*"), green("*"), yellow("*"), red("*"), green("*"), yellow("*"))

	fmt.Println()
	fmt.Println(bgWhite(magenta("coding at christmas")))
}
