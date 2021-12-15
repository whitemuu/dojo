from collections import Counter

input()
c = Counter(map(int, input().split(' ')))
n = int(input())
money = 0
for _ in range(0, n):
    size, price = map(int, input().split(' '))
    if c[size]:
        money += price
        c[size] -= 1

print(money)
