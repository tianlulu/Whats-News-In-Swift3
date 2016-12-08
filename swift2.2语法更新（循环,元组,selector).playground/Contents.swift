//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// New in swift 3
// 提示Playground转成手动程序运行的方式 Manually Run
var str = "Hello, playground"
print("hello ,swift3")

//1.弃用 ++，--
var a = 3
a += 1
// 为什么取消 ++ 和 --
// 1 ++a ; a++ ; --a ; a-- 容易让人迷惑
// 2 += 更符合语意

//2.弃用for循环
//for var i = 1 ; i < 10 ; i += 1 {
//    print(i)
//}

//1 <= x < 10
//for i in 1 ..< 10 {
//    print(i)
//}

//1 <= x <= 10
//for i in (1...10).reversed() {
//    print(i)
//}

//步长 //1 <= x <= 10
for i in  stride(from: 10, through: 0, by: -2){
    print(i)
}

//3.元组的改动
// tuple 的比较 默认支持相同类型元组之间的比较
let score1 = (chinese:90, math:95)
let score2 = (chinese:90, math:100)
let score3 = (chinese:100, math:90)
score1 < score2

func < (t1:(Int,Int),t2:(Int,Int))->Bool {
    if t1.1 != t2.1 {
        return t1.1 < t2.1
    }
    return t1.0 < t2.0
}
score3 < score2


// 取消tuple splat
func printScore(chinese: Int, math: Int){
    print("Chinese score: \(chinese) , math score: \(math)")
}
printScore(chinese: score1.chinese,math: score1.math)


//4.selector的更新
class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        self.view.frame = CGRect(x: 0, y: 0, width: 300, height: 400)
        
        let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
        button.center = self.view.center
        button.setTitle("click me!", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        //button.addTarget(self, action: "click", for: .touchUpInside)
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        self.view.addSubview(button)
        
    }
        
        func  click(){
            if view.backgroundColor == .yellow{
                view.backgroundColor = .cyan
            }else{
                view.backgroundColor = .yellow
            }
        }
}










