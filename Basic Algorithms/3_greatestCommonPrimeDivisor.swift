import Foundation
//Sàng nguyên tố Eratosthenes
func snt(_ n: Int) -> [Bool] {
    var arr = [Bool](repeating: true, count: n + 1)
    arr[0] = false
    arr[1] = false
    for i in 2...Int(Double(n).squareRoot()) {
        if arr[i] {
            for j in stride(from: 2 * i, through: n, by: i) {
                arr[j] = false
            }
        }
    }
    return arr
}

func greatestCommonPrimeDivisor(_ a: Int, _ b: Int) -> Int {
    let primes = snt(min(a, b))
    for i in stride(from: min(a, b), through: 2, by: -1) {
        if primes[i] && a % i == 0 && b % i == 0 {
            return i
        }
    }
    return -1
}
while let line = readLine() {
    let array = line.components(separatedBy: " ")
        .map{Int($0.trimmingCharacters(in: .whitespaces)) ?? 0}
    if array.count == 2 {
        let result = greatestCommonPrimeDivisor(array[0],array[1])
        
        print("g\(result)")
    } else {
         print("Please input two numbers")
    }
}
