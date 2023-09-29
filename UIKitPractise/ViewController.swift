//
//  ViewController.swift
//  UIKitPractise
//
//  Created by Michael Swain on 27/09/2023.
//

import UIKit

class ViewController: UIViewController {
    var shape = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        let shape = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        shape.backgroundColor = .red
        view.addSubview(shape)
        
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("Push me!", for: .normal)
        btn.setTitle("Pushed!", for: .highlighted)
        btn.addTarget(self, action: #selector(pushedBtn), for: .touchUpInside)
        view.addSubview(btn)
        
        
        let slider = UISlider(frame: CGRect(x: 0, y: 300, width: 150, height: 150))
        slider.addTarget(self, action: #selector(handleSlide(sender:)), for: .valueChanged)
        view.addSubview(slider)
    }
    
    @objc func pushedBtn() {
        print("pushed btn!")
        shape.backgroundColor = .blue
    }
    @objc func handleSlide(sender: UISlider?) {
        if let s = sender {
            print("sliding \(s.value)")
            shape.alpha = CGFloat(s.value)
        }
    }
}

