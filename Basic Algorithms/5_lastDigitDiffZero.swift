//Tìm chữ số khác không cuối cùng của n!(giai thừa)
func lastDigitDiffZero(_ n: Int) -> Int {
    var res: Int64 = 1
    for i in 2...n {
        res *= Int64(i)
        while res % 10 == 0 {
        res /= 10
        }
    res = res % 100
    }
    return Int(res % 10)
}
let result=lastDigitDiffZero(10)
print(result)