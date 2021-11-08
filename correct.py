from bisect import bisect_right
target = int(input())
a = map(int, input().split())
print(bisect_right([-n for n in a], -target)-1)
