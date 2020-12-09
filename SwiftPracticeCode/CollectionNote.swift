//
//  CollectionNote.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2020/12/8.
//

import Foundation

/**
 集合类型
 1. Swift 语言提供数组（Array）、集合（Set）和字典（Dictionary）三种基本的集合类型用来存储集合数据。
 2. Swift 的数组、集合和字典类型被实现为泛型集合。
 */

func arrayTest() {
    // 1. 数组的创建
    // 采用简化版初始化数组
    let initArr = [Int]()
    // let initArr = Array<Int>()
    print("someInts is of type [Int] with \(initArr.count) items.")
    // 打印“someInts is of type [Int] with 0 items.”
    // 带有默认值的数组
    let threeDoubles = Array(repeating: 0.0, count: 3)
    // threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]
    // 通过其他数组来创建数组
    let anotherThreeDoubles = Array(repeating: 2.5, count: 3)
    // anotherThreeDoubles 被推断为 [Double]，等价于 [2.5, 2.5, 2.5]
    let sixDoubles = threeDoubles + anotherThreeDoubles
    // sixDoubles 被推断为 [Double]，等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
    print(sixDoubles)
    // 字面量创建
    var shoppingList: [String] = ["Eggs", "Milk"]
    // var shoppingList = ["Eggs", "Milk"]
    // shoppingList 已经被构造并且拥有两个初始项。
    print(shoppingList)
    
    // 2. 数组的访问
    shoppingList.append("Flour")
    // shoppingList 现在有3个数据项
    shoppingList += ["Baking Powder"]
    // shoppingList 现在有四项了
    shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
    // shoppingList 现在有七项了
    // var firstItem = shoppingList[0]
    // 第一项是“Eggs”
    shoppingList[0] = "Six eggs"
    // 其中的第一项现在是“Six eggs”而不是“Eggs”
    print(shoppingList)
    shoppingList[4...6] = ["Bananas", "Apples"]
    // shoppingList 现在有6项
    print(shoppingList)
    shoppingList.insert("Maple Syrup", at: 0)
    // shoppingList 现在有7项
    // 现在是这个列表中的第一项是“Maple Syrup”
    
}

func setsTest() {
    // 1. set的创建
    // set无简化模式
    let letters = Set<Character>()
    print("letters is of type Set<Character> with \(letters.count) items.")
    // 打印“letters is of type Set<Character> with 0 items.”
    // 字面量创建
    var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
    // favoriteGenres 被构造成含有三个初始值的集合
    // Cannot convert value of type 'Int' to expected element type 'String'
    // 类型必须相同
    let favoriteGenress: Set = ["Rock", "Classical", "Hip hop"]
    
    // 2. set的修改
    favoriteGenres.insert("Jazz")
    // favoriteGenres 现在包含4个元素
    print(favoriteGenres)
    if let removedGenre = favoriteGenres.remove("Rock") {
        print("\(removedGenre)? I'm over it.")
    } else {
        print("I never much cared for that.")
    }
    // 打印“Rock? I'm over it.”
    if favoriteGenres.contains("Funk") {
        print("I get up on the good foot.")
    } else {
        print("It's too funky in here.")
    }
    // 打印“It's too funky in here.”
    
}

func dinctionaryTest() {
    // 1. 字典的创建
    // 直接构造
    var namesOfIntegers = [Int: String]()
    // namesOfIntegers 是一个空的 [Int: String] 字典
    // 字面量
    var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    
    // 2. 访问与修改
    // 插入与修改
    airports["LHR"] = "London"
    // airports 字典现在有三个数据项
    // 返回可选类型
    if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
        print("The old value for DUB was \(oldValue).")
    }
    // 输出“The old value for DUB was Dublin.”
    
}
