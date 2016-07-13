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
    @IBOutlet weak var foodObj: UIButton!
    @IBOutlet weak var trafficObj: UIButton!
    @IBOutlet weak var dailyObj: UIButton!
    @IBOutlet weak var funObj: UIButton!
    @IBOutlet weak var otherObj: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func foodAccount(sender: UIButton) {
        self.sendText(0)

    }

    @IBAction func dailyAccount(sender: UIButton) {
        self.sendText(2)

    }
    
    @IBAction func traffucAccount(sender: UIButton) {
        self.sendText(1)

    }
    
    @IBAction func funAccount(sender: UIButton) {
        self.sendText(3)

    }
    
    @IBAction func otherAccount(sender: UIButton) {
        self.sendText(4)

    }
    
    func sendText(temp: Int){
        let user = NSUserDefaults.standardUserDefaults()
        user.setInteger(temp, forKey: "MYKEY")
        user.synchronize()
    }
}

