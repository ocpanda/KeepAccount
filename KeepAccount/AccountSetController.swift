//
//  AccountSetController.swift
//  KeepAccount
//
//  Created by csie40343142 on 2016/7/13.
//  Copyright © 2016年 csie40343142. All rights reserved.
//

import UIKit

class AccountSetController: UIViewController{
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var object: UITextField!
    @IBOutlet weak var price: UITextField!
    var typeList: Array<String> = ["食物", "交通", "生活", "娛樂", "雜費"]
    
    /*func setTitleText(text: String) {
    labelTitle!.text = text
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool){
        /*super.viewDidAppear(animated)
        let user = NSUserDefaults.standardUserDefaults()
        let type = user.integerForKey("MYKEY")
        print(type)
        labelTitle!.text = typeList[type]*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let getText = segue.destinationViewController as! ViewController
    
    }*/
}