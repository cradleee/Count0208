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
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 追加
        // 枠線の色
        self.button.layer.borderColor = UIColor.white.cgColor
        // 枠線の太さ
        self.button.layer.borderWidth = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func Changecolor() {
        
        if number >= 10 {
            label.textColor = UIColor.red
        }else if number <= -10 {
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.white
        }
        
    }
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        
       Changecolor()
        
     }
    
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
        
        Changecolor()
        
    }
    
    @IBAction func double() {
        number = number * 2
        label.text = String(number)
        
        Changecolor()
        
    }
    
    @IBAction func divided() {
        number = number / 2
        label.text = String(number)
        
        Changecolor()
        
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        
        Changecolor()
        
    }
}
