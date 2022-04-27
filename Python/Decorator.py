import time

# Decorator function
def testTime(fn):
    def wrapper(*args, **kwargs):
        st = time.time()
        res = fn(*args, **kwargs)
        dt = time.time() - st
        print(f'Time of work: {dt} sec')
        return res
    return wrapper

# 1 function for test
def getNOD(a, b):
    while a != b:
        if a > b: a -= b
        else : b -= a
    return a

# 2 function for test
@testTime
def fastNOD(a, b):
    if a < b: a, b = b, a
    while b: a, b = b, a % b
    return a


test1 = testTime(getNOD)
test1(10000, 2)

res = fastNOD(10000, 2)
print(res)