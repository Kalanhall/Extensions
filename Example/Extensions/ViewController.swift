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
        
//        UIImage.image(named: "error", in: Bundle(for: type(of: self)))?.original
//        UIImage.image(color: UIColor.black)
        
        self.view.backgroundColor = UIColor.color(hexNumber: 0xFF7D25)
//        self.view.backgroundColor = UIColor.color(hexString: "0xFFFFFF")
        
        let btn = UIButton(type: .custom)
        btn.layer.borderWidth = 1
        btn.setTitle("标题", for: .normal)
        btn.setImage(UIImage(named: "error"), for: .normal)
        btn.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        self.view .addSubview(btn)
        
        btn.layout(with: .top, margin: 5.auto())
        
//        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "error@2x.png", ofType: nil) ?? "")
//        let image = UIImage.resizedImage(at: path, for: btn.frame.size)
//        btn.setBackgroundImage(image, for: .normal)
        
        let image = UIImage(named: "bg")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 200, width: 100, height: 100))
        imageView.layer.borderWidth = 1
        view.addSubview(imageView)
        imageView.image = UIImage.imageCropping(image, in: CGRect(x: 0, y: (image?.size.height ?? 0) / 3.0, width: image?.size.width ?? 0, height: (image?.size.height ?? 0) / 3.0), with: nil)
        imageView.contentMode = .scaleAspectFit
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        vc.kl_barAlpha = 0
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

