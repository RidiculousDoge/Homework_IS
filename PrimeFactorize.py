# 思考1.8(9)
from math import sqrt
from PrimeList import PrimeList


def factorize(n):
    fact = []
    probe = PrimeList(int(sqrt(n)+1))
    for p in probe:
        while n % p == 0:
            fact.append(p)
            n //= p
    if n > 1:
        fact.append(n)
    return fact


if __name__ == '__main__':
    N = 166
    fact = factorize(N)
    print('N = {}\nfact = {}'.format(N, fact))
