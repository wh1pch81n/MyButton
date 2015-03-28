//
//  ViewController.swift
//  MyButton
//
//  Created by Derrick  Ho on 3/28/15.
//  Copyright (c) 2015 Derrick  Ho. All rights reserved.
//

import UIKit

class MainView : UIView {
    var coolButton:(UIButton)!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpViews()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUpViews()
    }
    
    func setUpViews() {
        self.backgroundColor = UIColor.redColor()
//        var xWidth = 200.0
//        var yHeight = 50.0
//        var xPos = Float(self.frame.size.width) / 2.0
//        xPos -= Float(xWidth) / 2.0
//        var yPos = Float(self.frame.size.height) / 2.0
//        yPos -= Float(yHeight) / 2.0
//        
//        self.coolButton = UIButton(frame:
//            CGRect(x: Int(xPos),
//                y: Int(yPos),
//                width: Int(xWidth),
//                height: Int(yHeight)))
        self.coolButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        self.coolButton.center = self.center
        self.addSubview(self.coolButton)
        self.coolButton.backgroundColor = UIColor.blueColor()
    }
}

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        self.view = MainView(frame: UIScreen.mainScreen().bounds)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

