
l = list(range(0, 100_000_000))
f = 0
t = len(l)
a = 5.5

def bisect(a, l : list, f=0, t=len(l)):
    if t - f < 2:
        return f
    h = (t + f) // 2
    if a < l[h]:
        return bisect(a, l, f, h)
    return bisect(a, l, h, t)

'''
while f + 1 < t:
    h = (f + t) // 2
    if a < l[h]:
        t = h
    else:
        f = h
'''

f = bisect(a, l)

print('index is ', f)

