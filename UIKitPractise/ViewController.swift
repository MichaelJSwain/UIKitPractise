//
//  ViewController.swift
//  UIKitPractise
//
//  Created by Michael Swain on 27/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonView: UIButton!
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
        
        let myView3 = UIView(frame: CGRect(x: 100, y: 300, width: 200, height: 300))
        myView3.backgroundColor = UIColor.systemGreen
        view.addSubview(myView3)
        
        let title = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        title.text = "Hello!"
        title.textColor = UIColor.red
        
        let image = UIImageView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        image.image = UIImage(named: "IMG1")
        
        let contentStack = UIStackView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        contentStack.addArrangedSubview(title)
        contentStack.addArrangedSubview(image)
        contentStack.axis = NSLayoutConstraint.Axis.vertical
        contentStack.alignment = UIStackView.Alignment.center
        
        contentStack.backgroundColor = .yellow
        
        myView3.addSubview(contentStack)
//        myView3.addSubview(image)
        
    }


}

