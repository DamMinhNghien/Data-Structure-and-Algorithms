import Foundation
//maxFraction
func maxFraction(_ array1: [Int],_ array2: [Int])->Int{
    var cs = 0
    for i in 1..<array1.count{
        if(array1[cs] * array2[i] < array1[i] * array2[cs]){
            cs=i
            }
    }
    return cs
}
let array1=[5, 2, 5],array2=[6, 3, 4]
let result=maxFraction(array1,array2)
print(result)
