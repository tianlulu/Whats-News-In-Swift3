//: Playground - noun: a place where people can play

import UIKit
var arr = [0,1,2,3,4]
//swift2
//arr.indexOf(3)
//arr.removeAtIndex(3)

//swift2  //arr.removeAtIndex(3)
arr.index(of: 1)
arr.remove(at: 2)


//swift2  arr.maxElement()
arr.max()
arr.min()

//swift2  arr.insert(100, atIndex: 0)
arr.insert(10, at: 0)

var str = "hello,Swift"
//swift2: str.stringByAppendingString("world")
str.append("!")
//正在进行不会再最终落实
str.appending("!!!!!")
str
// 其他例子:
//swift2: numberOfSectionsInTableView(tableView)
//swift3: numberOfSections(in: tableView)
//swift2: pngImageData.writeToURL(fileURL, atomically: false)
//swift3: pngImageData.write(to: fileURL, options: [])
//swift2: addQuadCurveToPoint(endPoint, controlPoint: controlPoint)
//swift3: addQuadCurve(to: endPoint, controlPoint: controlPoint)
//swift2:
//panelView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor)
//swift3:
//panelView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//swift2: SCNAction.moveTo(SCNVector3Make(1, 1, 1), duration: 1)
//swift3: SCNAction.move(to: SCNVector3(1, 1, 1), duration: 1)
//swift2: WKInterfaceDevice.currentDevice()
//swift3: WKInterfaceDevice.current()
//swift2: device.playHaptic(.success)
//swift3: device.play(.success)

// 使用swift3创建自己的函数
func welcome(name:String, messsage:String) -> String {
    return messsage + " " + name
}
//没有显示的指定外部参数名时，调用的时候要写出外部参数名（声明时的内部参数名变成外部参数名）
welcome(name: "lulu", messsage: "hello")


func gcd(_ a:Int,_ b:Int) -> Int {
    return 0
}
gcd(2, 4)


func add(_ a:Int,add b:Int) -> Int {
    return a + b
}
add(1, add: 2)

func welcome(title: String = "Welcome",message: String = "Hello",name: String = "Guest")
    -> String {
    return title + "!" + message + " " + name + "!"
}
// swift2中，有default值的函数参数没有顺序问题
//welcome(name: "liuyubobobo" , title: "Hello" , message: "Good morning")

// swift3
// 必须使用指定顺序
welcome(title: "Hello" , message: "Good morning" , name: "liuyubobobo")

// 可以省略部分参数
welcome(title: "Good Morning", name: "liuyubobobo")
welcome(name: "liuyubobobo")



// swift3
func changeScores( scores: inout [Int] , by changeScore: (Int)->Int ){
    
    for (index,score) in scores.enumerated(){
        scores[index] = changeScore(score)
    }
}

func changeScore1( score: Int ) -> Int{
    
    return Int(sqrt(Double(score))*10)
}

func changeScore2( score: Int ) -> Int{
    
    return Int( Double(score) / 150.0 * 100.0 )
}

func selectScore( option: Int) -> (Int) -> Int{
    
    switch option{
    case 1: return changeScore1;
    case 2: return changeScore2;
    default: return {return $0}
    }
}


class StudentsList{
    
    var students : [String]
    
    init( students: [String] ){
        self.students = students
    }
    
    func addStudent(name: String, at index: Int){
        self.students.insert(name, at: index)
    }
    
    func addStudent(name: String, after student: String){
        if let index = students.index(of: student){
            self.students.insert(name, at: index)
        }
    }
    
    func addStudent(name: String, before student: String){
        if let index = students.index(of: student){
            self.students.insert(name, at: index+1)
        }
    }
}

let list = StudentsList(students:["A","B","C","D","E"])
let f = list.addStudent(name:at:)
f("lulu",0)
list

let f2 = list.addStudent(name:after:)
let f3 = list.addStudent(name:before:)
























