def next_permutation(s):
    n = len(s) - 2
    if n < 0: return False
    while s[n] >= s[n+1]:
        n -= 1
        if n == -1: return False

    m = len(s) -1
    while s[n] >= s[m]: m -= 1
    s[n], s[m] = s[m], s[n]
    s[n+1:] = s[len(s)-1 : n : -1]
    return True

n = int(input())
for _ in range(1, n+1):
    s = list(input())
    if next_permutation(s):
        print(''.join(s))
    else:
        print("no answer")

