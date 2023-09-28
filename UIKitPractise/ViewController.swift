//
//  ViewController.swift
//  UIKitPractise
//
//  Created by Michael Swain on 27/09/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.magenta
        
        let myView = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        myView.backgroundColor = UIColor.blue
        myView.clipsToBounds = true
        
        let myView2 = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        myView2.backgroundColor = UIColor.yellow
        
        view.addSubview(myView)
        myView.addSubview(myView2)
    }


}

