  func getGCD(_ a: Int,_ b: Int) -> Int{
        if b == 0 {return a}
        else{return getGCD(b,a%b)}
    }
    print(getGCD(10,5))