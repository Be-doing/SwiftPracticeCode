//
//  BlocksOfSwift.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2021/1/2.
//

import Foundation
/**
 闭包是自包含的函数代码块，可以在代码中被传递和使用。Swift 中的闭包与 C 和 Objective-C 中的代码块（blocks）以及其他一些编程语言中的匿名函数（Lambdas）比较相似。
 */

// 一般形式
/**
 { (parameters) -> return type in
     statements
 }
 */
let defaultBlock = { (s1: String, s2: String) -> Bool in
    return s1 > s2
}


/**
 奇淫巧技
 */
func mySug() {
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    // 1. 单表达式闭包的隐式返回
    var reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
    // 2. 参数名称缩写
    reversedNames = names.sorted(by: { $0 > $1 } )
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
}
