a = {}
a[1] = 1
a[2] = nil
a[3] = 1
a[4] = 1
print(#a) --> 4

a = {}
a[1] = 1
a[10000] = 1
print(#a) -->1

a[10000] = nil
print(#a) --> 1

a = {10, 20, 30, nil, nil}
print(#a) --> 3

