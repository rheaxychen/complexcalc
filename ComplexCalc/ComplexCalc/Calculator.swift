//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//
//  Modified by Xinyu Chen (Rhea) on 01/17/19.
//  INFO 449 iOS dev
//


import Foundation

// All your work will go in here
class Calculator {
    
    /*--- Basic operators ---*/
    func add (lhs: Int, rhs: Int) -> Int { return lhs + rhs }
    func subtract (lhs: Int, rhs: Int) -> Int { return lhs - rhs }
    func multiply (lhs: Int, rhs: Int) -> Int { return lhs * rhs }
    func divide (lhs: Int, rhs: Int) -> Int { return lhs / rhs }
    
    /*--- Complex operators ---*/
    
    // It takes two numbers and compute the result
    func mathOp (lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int { return op(lhs, rhs) }
    
    func mathOp (args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total = op(beg, args[0])
        for i in 1..<args.count { total = op(total, args[i]) }
        return total
    }
    
    // Alternate operators
    func add (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) { return (lhs.0 + rhs.0, lhs.1 + rhs.1) }
    func subtract (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) { return (lhs.0 - rhs.0, lhs.1 - rhs.1) }
    
    func add (_ args: [Int]) -> Int {
        var sum : Int = 0
        for index in 0..<args.count { sum += args[index] }
        return sum
    }
    
    func multiply (_ args: [Int]) -> Int {
        var res : Int = 1
        for index in 0..<args.count { res *= args[index] }
        return res
    }
    
    func count (_ args: [Int]) -> Int { return args.count }
    func avg (_ args: [Int]) -> Int { return add(args) / count(args) }
    
    func add (lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract (lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
}
