#include <iostream>
#include <cmath>

using namespace std;

bool isPrime(int n)
{
    
        if (n <= 1)
            return false;
        for (size_t i = 2; i <= sqrt(n); i++)
        {
            if (n % i == 0)
            {
                return false;
            }
        }
        cout << "true";
        return true;
      
}
int main()
{
    int n;
    cin >> n;
    isPrime(n);
    return 0;
}