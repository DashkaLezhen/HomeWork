//
//  ViewController.swift
//  1homework
//
//  Created by admin on 10.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var a = 2.5
    var b = 9.7
    var c = 6.9
    var d = 8.2
    var f = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // сложение целой части
        let sum = Int (a) + Int (b) + Int (c) + Int (d)
        print (sum)
        // сложение дробной части
        let summ = (a - Double( Int (a))) + (b - Double( Int (b))) + (c - Double( Int (c))) + (d - Double( Int (d)))
        print (summ)
        // проверка четное ли число
        if f % 2 == 0 {
            print ("\(f) - четное число") }
        else {
            print ("\(f) - не четное число")
        }
    }
}

