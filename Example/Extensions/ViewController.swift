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
        
//        self.view.backgroundColor = UIColor.color(hexNumber: 0xFF7D25)
        self.view.backgroundColor = UIColor.color(hexString: "0xFF7D25")
        
        
        let btn = UIButton(type: .custom)
        btn.layer.borderWidth = 1
        btn.setTitle("标题", for: .normal)
        btn.setImage(UIImage(named: "error"), for: .normal)
        btn.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        self.view .addSubview(btn)
        
        btn.layout(with: .normal, margin: 10.auto())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.navigationController?.pushViewController(UIViewController(), animated: true)
    }
}

