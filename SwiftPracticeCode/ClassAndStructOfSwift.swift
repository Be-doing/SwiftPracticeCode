//
//  ClassAndStructOfSwift.swift
//  SwiftPracticeCode
//
//  Created by Leng,Guocheng on 2021/1/3.
//
/**
 重点介绍
 swift的面向对象
 */
import Foundation

/**
 类和结构体的定义
 */

struct SomeStructure {
    // 在这里定义结构体
}
class SomeClass {
    // 在这里定义类
}

/**
 值类型与引用类型
 1. 值类型
 值类型是这样一种类型，当它被赋值给一个变量、常量或者被传递给一个函数的时候，其值会被拷贝。
 基本类型：整数（integer）、浮点数（floating-point number）、布尔值（boolean）、
 字符串（string)、数组（array）和字典（dictionary），都是值类型，
 其底层也是使用结构体实现的。Swift 中所有的结构体和枚举类型都是值类型。
 注意：对于集合中的拷贝是C++中的写时拷贝
 2. 引用类型
 引用类型在被赋值时，不会发生拷贝，而是增加引用计数
 3. 恒等运算符
 ===表示是否是同一个实例
 == 表示值是否相等
 */

/**
 属性
 1. 存储属性
 类的描述属性，不用通过计算的属性
 2. 计算属性
 计算属性不直接存储值，而是提供一个 getter 和一个可选的 setter，来间接获取和设置其他属性或变量的值。
 */
