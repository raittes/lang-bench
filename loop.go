package main
import "fmt"
import "time"

func main() {
  start := time.Now()
  sum := 0
  for i := 0; i< 10000000; i++ {
    sum += i
  }
  end := time.Now()
  elapsed := (end.Sub(start)).Seconds()
  fmt.Printf("Go:\t%.6f\t%v\n", elapsed, sum)
}
