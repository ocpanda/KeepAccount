//
//  ViewController.swift
//  KeepAccount
//
//  Created by csie40343142 on 2016/7/12.
//  Copyright © 2016年 csie40343142. All rights reserved.
//

import UIKit
/*
protocol ChoiceObjectText{
    func setTitleText(text:String)
}
*/

class ViewController: UIViewController{
    let choice = NSUserDefaults.standardUserDefaults()
    var sendText:((clicked: NSString) -> Void)?
    var delegate:ChoiceObjectText?
    
    @IBOutlet weak var foodObj: UIButton!
    @IBOutlet weak var trafficObj: UIButton!
    @IBOutlet weak var dailyObj: UIButton!
    @IBOutlet weak var funObj: UIButton!
    @IBOutlet weak var otherObj: UIButton!
    
    func setTitleText(text: String) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func foodAccount(sender: UIButton) {
        self.delegate!.setTitleText(foodObj.titleLabel!.text!)
        /*if(delegate != nil){
            delegate?.setTitleText(foodObj.titleLabel!.text!)
        }*/
        //self.sendText!(clicked: foodObj.titleLabel!.text!)
    }

    @IBAction func dailyAccount(sender: UIButton) {
        self.delegate!.setTitleText(dailyObj.titleLabel!.text!)
        /*if(delegate != nil){
            delegate?.setTitleText(dailyObj.titleLabel!.text!)
        }*/
        //self.sendText!(clicked: dailyObj.titleLabel!.text!)
    }
    
    @IBAction func traffucAccount(sender: UIButton) {
        self.delegate!.setTitleText(trafficObj.titleLabel!.text!)
        /*if(delegate != nil){
            delegate?.setTitleText(trafficObj.titleLabel!.text!)
        }*/
        //self.sendText!(clicked: trafficObj.titleLabel!.text!)
    }
    
    @IBAction func funAccount(sender: UIButton) {
        self.delegate!.setTitleText(funObj.titleLabel!.text!)
        /*if(delegate != nil){
            delegate?.setTitleText(funObj.titleLabel!.text!)
        }*/
        //self.sendText!(clicked: funObj.titleLabel!.text!)
    }
    
    @IBAction func otherAccount(sender: UIButton) {
        self.delegate!.setTitleText(otherObj.titleLabel!.text!)
        /*if(delegate != nil){
            delegate?.setTitleText(otherObj.titleLabel!.text!)
        }*/
        //self.sendText!(clicked: otherObj.titleLabel!.text!)
    }
}

