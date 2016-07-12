//
//  FoodAccountController.swift
//  KeepAccount
//
//  Created by csie40343142 on 2016/7/12.
//  Copyright © 2016年 csie40343142. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, ChoiceObjectText{
    @IBOutlet weak var labelTitle: UILabel!
    
    func setTitleText(text: String) {
        labelTitle!.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
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