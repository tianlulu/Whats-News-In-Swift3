//: Playground - noun: a place where people can play

import UIKit

//Never类型
//func myFatalError() -> Never{
//    print("!!!!!")
//    fatalError()
//}
//
//func mod(_ a:Int , _ b: Int) -> Int{
//    
//    guard b != 0 else{
//        myFatalError()
//    }
//    
//    return a%b
//}
//mod(10,0)



//隐式可选型
let a: Int! = 5
let b = a       // b是Int?
let c: Int = a  // c是Int
let d = a + 0   // d是Int


//keyPath
let superviewColor = #keyPath(UIView.superview.backgroundColor)

let view = UIView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
let label = UILabel(frame:CGRect(x:0, y:0, width:10, height:10))
view.backgroundColor = UIColor.blue
view.addSubview(label)

label.value(forKeyPath: superviewColor)
label.superview?.backgroundColor



//关于索引
let arr = [10, 20, 30, 40]
let i = arr.startIndex

// swift2
//let next = i.successor()
// swift3
let next = arr.index(after: i)


let str = "Hello, Swift3"
let j = str.startIndex
let k = str.index(j, offsetBy: 5)
str[k]
//子串
str.substring(with: j..<k)



//增加协议：FLoatPoint
// 这部分内容中为swift3更新后的新内容，涉及这套课程在第二三四季的内容。如果看不懂，可以学习完整套课程后，再回过头来看。
// Swift3引入了FloatingPoint这样的一个协议，来尝试统一不同的浮点类型。在这个协议下，我们写一个函数，可以不用指定这个函数到底是Float还是CGFloat或者是Double（其实还有更多浮点类型），只需要指定他是浮点型FloatingPoint就好了。比如：
func hypotenuse<T: FloatingPoint>(_ a: T, _ b: T) -> T{
    return (a*a + b*b).squareRoot()
}

let aFloat: Float = 3.0
let bFloat: Float = 4.0
hypotenuse(aFloat, bFloat)

let aCGFloat: CGFloat = 3.0
let bCGFloat: CGFloat = 4.0
hypotenuse(aCGFloat, bCGFloat)

let aDouble: Double = 3.0
let bDouble: Double = 4.0
hypotenuse(aDouble, bDouble)


// FloatingPoint还提供了很多特殊的符号，来表征一些特殊的数字，如：
// Pi
let alpha: Float = 2.0
alpha * Float.pi
alpha * .pi

let beta: CGFloat = 3.0
beta * CGFloat.pi
beta * .pi


// Infinity
func findMin<T: FloatingPoint>(values: [T]) -> T{
    
    var res = -T.infinity
    for v in values{
        res = v < res ? v : res
    }
    return res
}

// NaN (Not a Number)
let myNaN = Double.nan
let myNaN2 = CGFloat.nan

myNaN > 0
myNaN <= 0
myNaN.isNaN

// NaN的应用1
func divide<T: FloatingPoint>(_ a: T, _ b: T) -> T{
    if b.isZero{
        return T.nan
    }
    return a / b
}

divide(10, 0)
divide(10, 0).isNaN

// NaN的应用2
let temperatureData = ["21.5", "19.25", "27", "no data", "28.25", "no data", "23"]
let tempsCelsius = temperatureData.map { Double($0) ?? .nan }
let tempsFahrenheit = tempsCelsius.map { $0 * 1.8 + 32 }

let badAverage = tempsFahrenheit.reduce(0.0, +) / Double(tempsFahrenheit.count)

let validTemps = tempsFahrenheit.filter { !$0.isNaN }
validTemps
let average = validTemps.reduce(0.0, +) / Double(validTemps.count)



// 在Swift3中，%（求余运算符）已经不能使用在浮点数中了，只能对整数来进行求余
let u = 2.5
let v = 1.2
u%v
//let w = 3.0
//w%v



