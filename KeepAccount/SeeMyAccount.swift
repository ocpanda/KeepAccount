//
//  SeeMyAccount.swift
//  KeepAccount
//
//  Created by csie40343142 on 2016/7/13.
//  Copyright © 2016年 csie40343142. All rights reserved.
//

import UIKit

class SeeMyAccount: UIViewController{
    @IBOutlet weak var dataView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dataView.editable = false
        let user = NSUserDefaults.standardUserDefaults()
        let data = user.stringArrayForKey("recData")
        //print(data)
        if(data != nil){
            for userData in data!{
                dataView.text = dataView.text.stringByAppendingString(userData)
            }
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let getText = segue.destinationViewController as! ViewController
    
    }*/
}