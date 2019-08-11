import platform,time
version=platform.python_version()
start = time.time()
sum=0
for i in range(10000000):
  sum += i
print("Python3:\t%s\t%s\t%s" % (round(time.time()-start,6), sum, version))
