#include <iostream>
#include <cmath>
using namespace std;
// my case c++
int isPrime(int n)
{
    if (n <= 1)
        return -1;
    for (size_t i = 2; i <= sqrt(n); i++)
    {
        if (n % i == 0)
        {
            return -1;
        }
    }
    return n;
}
int GreatestCommonPrimeDivisor(int a, int b)
{
    int minValue = min(a, b);
    for (int i = minValue; i >= 2; i--)
    {
        if (isPrime(minValue) != -1 && a % minValue == 0 && b % minValue == 0)
        {
            return minValue;
        }
        else
        {
            minValue--;
        }
    }
    return -1;
}

// Sàng nguyên tố Eratosthenes
int main()
{
    int a, b;
    cin >> a >> b;
    cout << GreatestCommonPrimeDivisor(a, b);
    return 0;
}
