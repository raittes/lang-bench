use std::time::Instant;

fn main() {
  let now = Instant::now();
  let mut sum = 0u64;
  for i in 0..10000000 {
    sum += i
  }
  println!("Rust:\t\t{}.{}\t{}", now.elapsed().as_secs(), now.elapsed().subsec_nanos(), sum)
}
