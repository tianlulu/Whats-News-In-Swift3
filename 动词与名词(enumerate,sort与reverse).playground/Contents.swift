//: Playground - noun: a place where people can play

import UIKit
// 动词函数名
// 尾缀 -ed 表示过去式, -ing 表示名词: 有返回值, 不影响原对象
// 没有这些尾缀，则为动作，直接作用于原对象

var scores = [98,92,78,100]

// enumerate
//for scoreInfo in scores.enumerated(){
//    print(scoreInfo)
//}

// sort
scores.sorted()
scores

scores.sort()
scores

scores.sorted(by: >)
scores

scores.sort(by: >)
scores


//reverse
var arr = [0,1,2,3,4]
arr.reversed()
arr

arr.reverse()
arr


for i in (1...5).reversed() {
    print(i)
}

for (index,item) in arr.reversed().enumerated() {
    print(index,item)
}


//wherede变化
// Swift2
//if case ( let x , 0 ) = vector where x > 2 && x < 5{
let vector = (4,0)
if case ( let x , 0 ) = vector , x > 2 && x < 5{
    print("It's the vector!")
}

func doMath(a: Int?, b: Int?, c: Int?) -> Int?{
    
    // Swift2
//    guard
//        let a = a, a > 0,
//        let b = b, b <= 0,
//        let c = c, c%2 == 0 else{
//            return nil
// }
    
    guard
        let a = a, let b = b, let c = c,
        a > 0, b <= 0, c%2 == 0 else{
            return nil
    }
  return 0
}





