import Foundation
// Chúng ta có một số nguyên dương n. Mỗi một lần ta thay thế n bằng tổng các thừa số nguyên tố của nó (ví dụ 12=2*2*3 thì 12 sẽ được thay thế bằng số 2+2+3=7)

// Chúng ta áp dụng phép toán này vào số hiện tại cho đến khi kết quả thu được giống vs số hiện tại

// Cho một số tự nhiên, hãy tìm kết quả cuối cùng của phép toán trên.
func Solve(_ n: Int)->Int{
      var k = 2,sum = 0,m = n
    while m>1 {
        while m % k == 0 {
            sum += k
            m /= k
        }
        k += 1 
    } 
    return sum
}
func FactorSum(_ n: Int)->Int{
    var m = n
    while m != Solve(m){
     m = Solve(m)
       print(m)
    }
    return m
}
while let firstInput = readLine(),let number = Int(firstInput) {
    let result = FactorSum(number)
    print(result)
}
