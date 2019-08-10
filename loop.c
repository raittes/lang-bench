#include <stdio.h>
#include <stdint.h>
#include <sys/time.h>

int main() {
  struct timeval start, end;
  gettimeofday(&start, NULL);

  int i;
  unsigned long long int sum;
  sum = 0;
  for (i=0; i<=10000000; i++) {
    sum += i;
  }

  gettimeofday(&end, NULL);
  double secs = (double)(end.tv_usec - start.tv_usec) / 1000000 + (double)(end.tv_sec - start.tv_sec);
  printf("C:\t%f\t%llu\n", secs, sum);
  return 0;
}
