//
//  ViewController.swift
//  Extensions
//
//  Created by Kalanhall@163.com on 11/13/2019.
//  Copyright (c) 2019 Kalanhall@163.com. All rights reserved.
//

import UIKit
import Extensions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIImage.image(named: "", in: Bundle(for: type(of: self)))?.original
        UIImage.image(color: UIColor.black)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

