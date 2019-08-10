import time
start = time.time()
sum=0
for i in range(10000000):
  sum += i
print("Python:\t%s\t%s" % (round(time.time()-start,6), sum))
