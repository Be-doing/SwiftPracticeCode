//
//  FirstSightForSwift.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2020/12/7.
//

import Foundation

/**
 第一个程序
 打印 hello world
 */

func firstProgram() {
    print("Hello, World!")
}

/**
 简单值的练习
 */
func sampleValue() {
    // 1. let声明常量，var声明变量
    var myVariable = 42
    myVariable = 50
    let myConstant = 42
    // Cannot assign to value: 'myConstant' is a 'let' constant
    // 常量值无法被再次改成
    // myConstant = 50

    // 2. 显式转换为其他类型
    let label = "The width is"
    let width = 94
    let widthLabel = label + String(width)
    // Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
    // 值不会被隐式转换
    // let widthLabel = label + width

    // 3. 转字符串技巧 \()
    let apples = 3
    let oranges = 5
    //let appleSummary = "I have " + String(apples) + "apples."
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit."

    // 4. []来操作数组与字典
    var shoppingList = ["catfish", "water", "tulips", "blue paint"]
    shoppingList[1] = "bottle of water"
    shoppingList = ["water", "tulips",]
    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ]
    occupations["Jayne"] = "Public Relations"
}


/**
 控制流语法
 */

func controlGrammar() {
    // 1. for in
    let individualScores = [75, 43, 103, 87, 12]
    var teamScore = 0
    for score in individualScores {
        if score > 50 {
            teamScore += 3
        } else {
            teamScore += 1
        }
    }
    print(teamScore)

    // 2. 可选值 && if
    var optionalString: String? = "Hello"
    print(optionalString == nil)

    var optionalName: String? = "John Appleseed"
    // var optionalName: String? = nil
    var greeting = "Hello!"
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }
    print(greeting)

    let nickName: String? = nil
    let fullName: String = "John Appleseed"
    let informalGreeting = "Hi \(nickName ?? fullName)"
    print(informalGreeting)

    // 3. default
    let vegetable = "red pepper"
    switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
        // Switch must be exhaustive
    default:
        print("Everything tastes good in soup.")
    }

    // 4. while
    var n = 2
    while n < 100 {
        n *= 2
    }
    print(n)

    var m = 2
    repeat {
        m *= 2
    } while m < 100
    print(m)
}


/**
 函数与闭包
 */
// 1. 函数
// 使用 func 来声明一个函数，使用名字和参数来调用函数。使用 -> 来指定函数返回值的类型。
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
//print(greet(person:"Bob", day: "Tuesday"))
// 默认情况下，函数使用它们的参数名称作为它们参数的标签，使用 _ 表示不使用参数标签。
func greetPro(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
//print(greet("John", on: "Wednesday"))
// 使用元组来生成复合值，比如让一个函数返回多个值。该元组的元素可以用名称或数字来获取。
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
//let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
//print(statistics.sum)
//print(statistics.2)


