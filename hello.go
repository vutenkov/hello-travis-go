package main

import "fmt"

func SayHello() string {
	return "Hello"
}

func TheAnswer() int {
	return 42
}

func main() {
	fmt.Println(SayHello())
}
