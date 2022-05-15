//
//  ViewController.swift
//  2HomeWork
//
//  Created by admin on 13.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //FirstExercise
        print("FirstExercise")
        FirstExercise.Sum(5,3)
        FirstExercise.Sum(5.5,3.7)
        FirstExercise.Sum(5,3.8)
        FirstExercise.Sum(5.5,7)
        FirstExercise.Subtract(5,3)
        FirstExercise.Subtract(5.5,3.7)
        FirstExercise.Subtract(5.6,6)
        FirstExercise.Subtract(5,3.7)
        FirstExercise.Multiply(5,3)
        FirstExercise.Multiply(5.5,3.7)
        FirstExercise.Multiply(5.9,6)
        FirstExercise.Multiply(5,3.9)
        FirstExercise.Divide(6,3)
        FirstExercise.Divide(5.5,3.7)
        FirstExercise.Divide(6.9,3)
        FirstExercise.Divide(5,3.7)
        print("")
        
        //SecondExercise
        print("SecondExercise")
        SecondExercise.SumNumber(1234)
        SecondExercise.SumNumber2(5678)
        print("")
        
        //ThirdExercise
        print("ThirdExercise")
        ThirdExercise.Comparison("абв", "ввш")
        print("")
        
        //FifthExercise
        print("FifthExercise")
        FifthExercise.Degree(5,3)
        FifthExercise.Degree(3.8,4.3)
        FifthExercise.Degree(5.5,3)
        FifthExercise.Degree(3,8.4)
        print("")
        
        //SixthExercise
        print("SixthExercise")
        SixthExercise.Factorial(5)
        print("Factorial: \(SixthExercise.Factorial2(5))")
        print("")
        
        //FourthExercise
        print("FourthExercise")
        FourthExercise.Cycle(0)
        print("")
    }
}

//FirstExercise
class FirstExercise {
    static func Sum(_ x: Int, _ y : Int){
        print("\(x) + \(y) = \(x+y)")
    }
    static func Sum(_ x: Double, _ y: Double){
        print("\(x) + \(y) = \(x+y)")
    }
    static func Sum(_ x: Int, _ y : Double){
        print("\(x) + \(y) = \(Double(x)+y)")
    }
    static func Sum(_ x: Double, _ y: Int){
        print("\(x) + \(y) = \(x+Double(y))")
    }
    static func Subtract(_ x: Int, _ y : Int){
        print("\(x) - \(y) = \(x-y)")
    }
    static func Subtract(_ x: Double, _ y: Double){
        print("\(x) - \(y) = \(x-y)")
    }
    static func Subtract(_ x: Double, _ y : Int){
        print("\(x) - \(y) = \(x-Double(y))")
    }
    static func Subtract(_ x: Int, _ y : Double){
        print("\(x) - \(y) = \(Double(x)-y)")
    }
    static func Multiply(_ x: Int, _ y : Int){
        print("\(x) x \(y) = \(x*y)")
    }
    static func Multiply(_ x: Double, _ y: Double){
        print("\(x) x \(y) = \(x*y)")
    }
    static func Multiply(_ x: Double, _ y : Int){
        print("\(x) x \(y) = \(x*Double(y))")
    }
    static func Multiply(_ x: Int, _ y: Double){
        print("\(x) x \(y) = \(Double(x)*y)")
    }
    static func Divide(_ x: Int, _ y : Int){
        print("\(x) / \(y) = \(x/y)")
    }
    static func Divide(_ x: Double, _ y: Double){
        print("\(x) / \(y) = \(x/y)")
    }
    static func Divide(_ x: Int, _ y : Double){
        print("\(x) / \(y) = \(Double(x)/y)")
    }
    static func Divide(_ x: Double, _ y: Int){
        print("\(x) / \(y) = \(x/Double(y))")
    }
}

//SecondExercise
class SecondExercise {
    static func SumNumber(_ x: Int){
        var sumDigits = 0
        var num = x
        for _ in 1 ... String(x).count{
            sumDigits += num%10
            num = Int(num/10)
        }
        print("Sum of digits \(x) : \(sumDigits)")
    }
    static func SumNumber2(_ x: Int){
        var sumDigits: Int = 0
        for character in String(x){
            sumDigits += Int(String(character))!
        }
        print("Sum of digits \(x) : \(sumDigits)")
    }
}

//ThirdExercise
class ThirdExercise {
    static func Comparison (_ txt1: String, _ txt2: String){
        if txt1 < txt2 {
            print("\( txt1) < \( txt2)")
        }
        else if txt1 == txt2 {
            print("\( txt1) = \( txt2)")
        }
        else {
            print("\( txt1) > \( txt2)")
        }
    }
}

//FourthExercise
class FourthExercise {
    
    static func Cycle(_ x: Int) {
        while x < Int.max {
            FourthExercise.Cycle(0)
        }
    }
}

//FifthExercise
class FifthExercise {
    static func Degree(_ x: Int, _ y: Int){
        let degree = pow(Double(x), Double(y))
        print("\(x) to the power of \(y) = \(Int(degree))")
    }
    static func Degree(_ x: Double, _ y: Double){
        let degree = pow(x, y)
        print("\(x) to the power of \(y) = \(degree)")
    }
    static func Degree(_ x: Double, _ y: Int){
        let degree = pow(x, Double(y))
        print("\(x) to the power of \(y) = \(degree)")
    }
    static func Degree(_ x: Int, _ y: Double){
        let degree = pow(Double(x), y)
        print("\(x) to the power of \(y) = \(degree)")
    }
}

//SixthExercise
class SixthExercise {
    static func Factorial (_ x: Int){
        var factorial = 1
        if x > 1 {
            for i in 1...x{
                factorial *= i
            }
        }
        print("Factorial \(x)!: \(factorial)")
    }
    static func Factorial2 (_ x: Int) -> Int{
        if x == 0{
            return 1
        }
        return x * Factorial2 (x-1)
    }
}
