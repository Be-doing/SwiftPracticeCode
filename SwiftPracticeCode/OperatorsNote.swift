//
//  OperatorsNote.swift
//  SwiftPracticeCode
//  运算符笔记
//  Created by Leng,Guocheng on 2020/12/7.
//



/**
 
 不同于其他语言的是，Swift 提供了几种方便表达一个区间的值的区间运算符。
 */

// 1. 闭区间运算符 （a...b）
func closedIntervalTest() {
//    Can't form Range with upperBound
//    a 的值不能超过 b
//    for index in 5...1 {
//        print("\(index) * 5 = \(index * 5)")
//    }
    for index in 1...5 {
        print("\(index) * 5 = \(index * 5)")
    }
    // 1 * 5 = 5
    // 2 * 5 = 10
    // 3 * 5 = 15
    // 4 * 5 = 20
    // 5 * 5 = 25
}

// 2. 半开区间运算符（a..<b）
func halfOpenIntervalTest() {
    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {
        print("第 \(i + 1) 个人叫 \(names[i])")
    }
    // 第 1 个人叫 Anna
    // 第 2 个人叫 Alex
    // 第 3 个人叫 Brian
    // 第 4 个人叫 Jack
    for name in names[2...] {
        print(name)
    }
    // Brian
    // Jack

    for name in names[...2] {
        print(name)
    }
    // Anna
    // Alex
    // Brian
    for name in names[..<2] {
        print(name)
    }
    // Anna
    // Alex
    
    
}
