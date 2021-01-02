//
//  UseSwiftFunc.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2021/1/2.
//

import Foundation

/**
 语法格式
 函数关键字 函数名 参数列表 -> 返回值 {}
 
 func name(parameters) -> return type {
     function body
 }
 */



// 无参函数
func sayHelloWorld() -> String {
    return "hello, world"
}

// 多参函数
func greet(person: String, alreadyGreeted: Bool) -> String {
    return "parms is \(person) and \(alreadyGreeted)"
}

// 无返回值函数
func greet(person: String) {
    print("Hello, \(person)!")
}

// 返回值为元组
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

// 参数标签与参数名
/**
 每个函数参数都有一个参数标签（argument label）以及一个参数名称（parameter name）。参数标签在调用函数的时候使用；调用的时候需要将函数的参数标签写在对应的参数前面。参数名称在函数的实现中使用。默认情况下，函数参数使用参数名称来作为它们的参数标签。
 */

func someFunction(argumentLabel parameterName: Int) {
    // 在函数体内，parameterName 代表参数值
}

// 如果你不希望为某个参数添加一个标签，可以使用一个下划线（_）来代替一个明确的参数标签。
func someFunction2(_ parameterName: Int) {
    // 在函数体内，parameterName 代表参数值
}

func someFunction3(_: Int) {
    
}

// 默认参数
// 参数赋值来为任意一个参数定义默认值
func myPrint(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    
}

// 可变参数
// 一个可变参数（variadic
// parameter）可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数可以被传入不确定数量的输入值。通过
// 在变量类型名后面加入（...）的方式来定义可变参数。

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

// 函数类型
var mathFunction: (Int)->() = someFunction3
