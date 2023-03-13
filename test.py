import math

x = 100
sum = 0
for i in range(10):
    sum += -1 ** i * x ** (2*i) / math.factorial(2*i)

print(sum)