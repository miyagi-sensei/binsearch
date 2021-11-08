import random
nums = []
for _ in range(100):
	nums.append(random.randint(-100, 100))
# nums.sort(reverse=True)
nums.sort()
print(random.randint(-110, 110))
for n in nums:
	print(n, end=' ')
