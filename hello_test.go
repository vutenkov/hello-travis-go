package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSayHello(t *testing.T) {
	assert.Equal(t, "Hello", SayHello())
}
