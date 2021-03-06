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
    var hotButton:(CustomButton)!
    
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
        
        self.hotButton = CustomButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        self.addSubview(hotButton)
    }
}

class ViewController: UIViewController {
    var mainView:(MainView)!
    var coolerButton:(UIButton)!
    var hotterButton:(CustomButton)!
    
    override func loadView() {
        super.loadView()
        self.view = MainView(frame: UIScreen.mainScreen().bounds)
        self.mainView = self.view as MainView
        self.coolerButton = self.mainView.coolButton
        self.coolerButton.addTarget(self,
            action: "tappedCoolButton:",
            forControlEvents: UIControlEvents.TouchUpInside)
        
        self.hotterButton = self.mainView.hotButton
        self.hotterButton.completionBlock = {
            () -> () in
            var alert = UIAlertController(title: "Yang", message: "Sour", preferredStyle: UIAlertControllerStyle.Alert)
            
            var action = UIAlertAction(title: "yup!", style: UIAlertActionStyle.Cancel) {
                (actionInstance: UIAlertAction!) -> Void in
                self.mainView.backgroundColor = UIColor.groupTableViewBackgroundColor()
            }
            alert.addAction(action)
            self.presentViewController(alert, animated: true) {
                () -> Void in
                self.mainView.backgroundColor = UIColor.yellowColor()
            }
        }
    }
    
    func tappedCoolButton(sender: AnyObject) {
        var alert = UIAlertController(title: "Bang", message: "Power", preferredStyle: UIAlertControllerStyle.Alert)
        
        var action = UIAlertAction(title: "OK!", style: UIAlertActionStyle.Destructive) {
            (actionInstance: UIAlertAction!) -> Void in
            self.mainView.backgroundColor = UIColor.greenColor()
        }
        alert.addAction(action)
        self.presentViewController(alert, animated: true) {
            () -> Void in
            self.mainView.backgroundColor = UIColor.blueColor()
        }
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

