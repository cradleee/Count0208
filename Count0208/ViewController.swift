//
//  ViewController.swift
//  Count0208
//
//  Created by kamano yurika on 2018/02/08.
//  Copyright © 2018年 釜野由里佳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        
        if number >= 10 {
            label.textColor = UIColor.red
        }else{
            label.textColor = UIColor.white
        }
     }
    
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
    }
    
    @IBAction func double() {
        number = number * 2
        label.text = String(number)
    }
    
    @IBAction func divided() {
        number = number / 2
        label.text = String(number)
    }
}
