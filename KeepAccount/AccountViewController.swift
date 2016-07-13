//
//  FoodAccountController.swift
//  KeepAccount
//
//  Created by csie40343142 on 2016/7/12.
//  Copyright © 2016年 csie40343142. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController{
    @IBOutlet weak var errMsg: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var object: UITextField!
    @IBOutlet weak var price: UITextField!
    var typeList: Array<String> = ["食物", "交通", "生活", "娛樂", "雜費"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        errMsg.hidden = true
        let user = NSUserDefaults.standardUserDefaults()
        let type = user.integerForKey("MYKEY")
        print(type)
        labelTitle.text = typeList[type]
    }
    
    override func viewDidAppear(animated: Bool){
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordOnClick(sender: UIButton) {
        getUserInputData(object.text, price: price.text)
    }
    
    func getUserInputData(objTemp:String?, price:String?){
        //if(objTemp != nil || price != nil){
            /*let vc = ViewController()
            self.presentViewController(vc, animated: true, completion: nil)*/
        //}
        //else{
            errMsg!.hidden = false
            errMsg!.text = "有資料未輸入"
        //}
    }

}