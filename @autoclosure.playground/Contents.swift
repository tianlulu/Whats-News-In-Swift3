//: Playground - noun: a place where people can play

import UIKit

// 写法1，使用if-else
//let username: String? = "liuyubobobo"
//let screenname: String
//if let username = username{
//    screenname = username
//}
//else{
//    screenname = "Guest"
//}

// 写法2，使用三目运算符(ternary operator)
//let screenname2 = username != nil ? username! : "Guest"
//
//
//func login(username: String, password: String) -> String?{
//    //复杂的登录逻辑
//    return username
//}
//
//// 问题
//let screenname3 = login(username: "liuyubobobo",password: "123456") != nil ? login(username: "liuyubobobo",password: "123456")! : "Guest"
//
//// 使用??
//let screenname4 = login(username: "liuyubobobo",password: "123456") ?? "Guest"



func login(username: String, password: String) -> String?{
    //复杂的登录逻辑
    print("login...")
    return username
}

func generateNickName() -> String{
    //复杂的生成逻辑
    print("generating...")
    return "imooc"
}

// 使用??
//let screenname = login(username: "liuyubobobo",password: "123456") ?? generateNickName()

// 定义自己的???
//infix operator ???
//func ???<T>(optional: T? , defaultValue: T) -> T{
//    if let value = optional{
//        return value
//    }
//    return defaultValue
//}
//
//let screenname = login(username: "liuyubobobo", password: "123456") ??? generateNickName()

// defaultValue使用函数
//infix operator ???
//func ???<T>(optional: T? , defaultValue: ()->T) -> T{
//    if let value = optional{
//        return value
//    }
//    return defaultValue()
//}
//
//let screenname = login(username: "liuyubobobo", password: "123456") ??? generateNickName

// 使用autoclosure
infix operator ???
func ???<T>(optional: T? , defaultValue: @autoclosure ()->T) -> T{
    if let value = optional{
        return value
    }
    return defaultValue()
}

let screenname = login(username: "liuyubobobo", password: "123456") ??? generateNickName()



