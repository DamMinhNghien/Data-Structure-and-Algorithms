import Foundation
func isPrime(number n: Int)->String{
    if n<=1{
        return "false"
    }
    for i in 2...Int(sqrt(Float(n))){
        if n%i==0{
            return "false"
        }
    }
        return "true"
}
while let n = readLine(){
    if let input = Int(n){
   let result=isPrime(number:input)
    print(result)
    }
}

