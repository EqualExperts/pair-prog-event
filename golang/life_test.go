package life

import (
	"reflect"
	"testing"
)

func TestLife(t *testing.T) {
	assertEqual := func(t *testing.T, actual [][]bool, expected [][]bool) {
		t.Helper()
		if !reflect.DeepEqual(actual, expected) {
			t.Errorf("got %v but expected %v", actual, expected)
		}
	}

	t.Run("populated cell dies of solitude if it has no neighbours", func(t *testing.T) {
		actual := Life([][]bool{
			{false, false, false},
			{false, true, false},
			{false, false, false},
		})
		expected := [][]bool{
			{false, false, false},
			{false, false, false},
			{false, false, false},
		}
		assertEqual(t, actual, expected)
	})

	t.Skip("populated cell survives if it has two or three neighbors")

	t.Skip("populated cell dies of solitude if it has one neighbour")

	t.Skip("populated cell dies by overpopulation with more than three neighbours")

	t.Skip("empty cell becomes populated if it has three neighbors")
}
