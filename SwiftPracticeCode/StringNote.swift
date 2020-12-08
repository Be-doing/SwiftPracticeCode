//
//  StringNote.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2020/12/8.
//

import Foundation

/**
 字符串和字符
 对于swift来说，每一个字符串都是由编码无关的 Unicode 字符组成，并支持访问字符的多种 Unicode 表示形式。
 1. 由于unicode编码由utf-8，utf-16，utf-32。因此使用count和length需要注意
 2. unicode占用内存空间不统一，因此对于String的索引不会是整型，而是相对的索引
 */

func useStringTest() {
    // 1. 初始化一个字符串
    let emptyString = ""               // 空字符串字面量
//    let anotherEmptyString = String()  // 初始化方法
    if emptyString.isEmpty {
        print("Nothing to see here")
    }
    // 2. 可变字符串
    var variableString = "Horse"
    variableString += " and carriage"
    // variableString 现在为 "Horse and carriage"

//    let constantString = "Highlander"
//    constantString += " and another Highlander"
//    常量字符串不可被修改
//    Left side of mutating operator isn't mutable: 'constantString' is a 'let' constant
    
    // 3. 遍历字符串
    for character in "Dog!🐶" {
        print(character)
    }
    // D
    // o
    // g
    // !
    // 🐶
    
    // 4. 可以是字符数组
    let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
    let catString = String(catCharacters)
    print(catString)
    // 打印输出：“Cat!🐱”
}

func interfaceOfStringTest() {
    // 1. 连接字符串
    let string1 = "hello"
    let string2 = " there"
    var welcome = string1 + string2
    // welcome 现在等于 "hello there"
    var instruction = "look over"
    instruction += string2
    // instruction 现在等于 "look over there"
    let exclamationMark: Character = "!"
    welcome.append(exclamationMark)
    // welcome 现在等于 "hello there!"

    // 2. 索引
    let greeting = "Guten Tag!"
    print(greeting[greeting.startIndex])
    // G
    print(greeting[greeting.index(before: greeting.endIndex)])
    // !
    print(greeting[greeting.index(after: greeting.startIndex)])
    // u
    let index = greeting.index(greeting.startIndex, offsetBy: 7)
    print(greeting[index])
    // a
    
    // 3. 插入与删除
    var hello = "hello"
    hello.insert("!", at: hello.endIndex)
    // hello 变量现在等于 "hello!"

    hello.insert(contentsOf:" there", at: hello.index(before: hello.endIndex))
    // hello 变量现在等于 "hello there!"
    
    hello.remove(at: hello.index(before: hello.endIndex))
    // hello 现在等于 "hello there"

    let range = welcome.index(hello.endIndex, offsetBy: -6)..<hello.endIndex
    hello.removeSubrange(range)
    // hello 现在等于 "hello"
    
    // 4. 子字符串
    var subString = "Hello, world!"
    let indexs = subString.firstIndex(of: ",") ?? subString.endIndex
    let beginning = subString[..<indexs]
    // beginning 的值为 "Hello"
    // 验证内存复用
    print(beginning)
    print(subString)
    subString.insert(contentsOf: "_HI_", at: indexs)
    print(beginning)
    print(subString)
    // Hello
    // Hello_HI_, world!
    // 把结果转化为 String 以便长期存储。
    let newString = String(beginning)
    
    // 5. 比较字符串
    let quotation = "We're a lot alike, you and I."
    let sameQuotation = "We're a lot alike, you and I."
    if quotation == sameQuotation {
        print("These two strings are considered equal")
    }
    // 打印输出“These two strings are considered equal”
    
    // 如果两个字符串（或者两个字符）的可扩展的字形群集是标准相等，那就认为它们是相等的。
    
}
