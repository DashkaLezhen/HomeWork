//
//  ViewController.swift
//  3HomeWork
//
//  Created by admin on 17.05.22.
//

import UIKit

class ViewController: UIViewController {
    var x = [(1,"x"), (4,"y"), (6,"a"), (-3,"b"),]
    override func viewDidLoad() {
        super.viewDidLoad()
        let y = x.map({(($0.0 * $0.0), $0.1)}).filter({ $0.0 % 2 == 0 }).sorted( by: {$0.1 < $1.1})
        print (y)
        // Do any additional setup after loading the view.
    }


}

