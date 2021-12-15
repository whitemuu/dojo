from collections import Counter

def notHappy(b):
    i = 0
    while i < len(b):
        before = i
        while i+1 < len(b) and b[i] == b[i+1]: i += 1
        if i == before: return True
        i += 1
    return False

g = int(input())

for _ in range(0,g):
    input()
    b = list(input())
    c = Counter(b)
    del c['_']
    if 1 in c.values() or ('_' not in b and notHappy(b)):
        print("NO"); continue
    else:
        print("YES")
