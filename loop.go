package main
import "fmt"
import "time"
import "runtime"

func main() {
  start := time.Now()
  var sum, i int64 = 0, 0
  for i = 0; i< 10000000; i++ {
    sum += i
  }
  end := time.Now()
  elapsed := (end.Sub(start)).Seconds()
  fmt.Printf("Go:\t\t%.6f\t%v\t%s\n", elapsed, sum, runtime.Version())
}
