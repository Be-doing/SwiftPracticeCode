//
//  ControlFlowNote.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2020/12/9.
//

import Foundation

/**
 控制流
 1. 思想大都一样，功能或许更强大
 2. Swift 的 switch 语句比许多类 C 语言要更加强大。
 */

func forTest() {
    // for 可遍历任何集合，甚至String
    // 也可以配合区间使用
    let names = ["Anna", "Alex", "Brian", "Jack"]
    for name in names {
        print("Hello, \(name)!")
    }
    // Hello, Anna!
    // Hello, Alex!
    // Hello, Brian!
    // Hello, Jack!
    
    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName, legCount) in numberOfLegs {
        print("\(animalName)s have \(legCount) legs")
    }
    // cats have 4 legs
    // ants have 6 legs
    // spiders have 8 legs
    
    for index in 1...5 {
        print("\(index) times 5 is \(index * 5)")
    }
    // 1 times 5 is 5
    // 2 times 5 is 10
    // 3 times 5 is 15
    // 4 times 5 is 20
    // 5 times 5 is 25
}

func whileTest() {
    // while循环没有改变多少
    // swift改变了do while的格式
    // 新增repeat-while
    repeat {
       // 必被执行一次
    } while false
    print("Game over!")
}

func ifAndSwitchTest() {
    // if
    // swift的if语句不同的是条件必须是一个布尔表达式
    // 不能直接传值
    // if 1 { Type 'Int' cannot be used as a boolean; test for '!= 0' instead
    // let name:String = ""
    // if name {Cannot convert value of type 'String' to expected condition type 'Bool'
    
    let temperatureInFahrenheit = 30
    if temperatureInFahrenheit <= 32 {
        print("It's very cold. Consider wearing a scarf.")
    }
    // 输出“It's very cold. Consider wearing a scarf.”
    
    // switch
    let someCharacter: Character = "z"
    switch someCharacter {
    case "a":
        print("The first letter of the alphabet")
    case "z":
        print("The last letter of the alphabet")
    default:
        print("Some other character")
    }
    // 输出“The last letter of the alphabet”
    
    let anotherCharacter: Character = "a"
    switch anotherCharacter {
    // case "a": // 无效，这个分支下面没有语句
    // 'case' label in a 'switch' should have at least one executable statement
    case "A":
        print("The letter A")
    default:
        print("Not the letter A")
    }
    // 这段代码会报编译错误
    
    let approximateCount = 62
    let countedThings = "moons orbiting Saturn"
    let naturalCount: String
    switch approximateCount {
    case 0:
        naturalCount = "no"
    case 1..<5:
        naturalCount = "a few"
    case 5..<12:
        naturalCount = "several"
    case 12..<100:
        naturalCount = "dozens of"
    case 100..<1000:
        naturalCount = "hundreds of"
    default:
        naturalCount = "many"
    }
    print("There are \(naturalCount) \(countedThings).")
    // 输出“There are dozens of moons orbiting Saturn.”
    
    let anotherPoint = (2, 0)
    switch anotherPoint {
    case (let x, 0):
        print("on the x-axis with an x value of \(x)")
    case (0, let y):
        print("on the y-axis with a y value of \(y)")
    case let (x, y):
        print("somewhere else at (\(x), \(y))")
    }
    // 输出“on the x-axis with an x value of 2”
    
    let yetAnotherPoint = (1, -1)
    switch yetAnotherPoint {
    case let (x, y) where x == y:
        print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        print("(\(x), \(y)) is just some arbitrary point")
    }
    // 输出“(1, -1) is on the line x == -y”
    
    
}
