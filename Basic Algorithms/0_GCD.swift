import Foundation

func GCD(_ a: Int, _ b: Int) -> Int {
    var minValue = min(a, b)
    while minValue > 0 {
        if a % minValue == 0 && b % minValue == 0 {
            return minValue
        }
        minValue -= 1
    }
    return -1
}
while let line = readLine() {
    let array = line.components(separatedBy: " ")
        .map{Int($0.trimmingCharacters(in: .whitespaces)) ?? 0}
    if array.count == 2 {
        let result = GCD(array[0],array[1])
        print("gcd=\(result)")
    } else {
         print("Please input two numbers")
    }
}