//
//  FoodAccountController.swift
//  KeepAccount
//
//  Created by csie40343142 on 2016/7/12.
//  Copyright © 2016年 csie40343142. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController{
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var object: UITextField!
    @IBOutlet weak var price: UITextField!
    var typeList: Array<String> = ["食物", "交通", "生活", "娛樂", "雜費"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let user = NSUserDefaults.standardUserDefaults()
        let type = user.integerForKey("MYKEY")
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
        if(objTemp != "" && price != ""){
            if let priceVal = Int(price!){
                //print(objTemp)
                print(priceVal)
                let user = NSUserDefaults.standardUserDefaults()
                let sendValue: String=labelTitle.text!+"-項目: "+objTemp!+" 價格: "+price!+"\n"
                user.setObject(sendValue, forKey: "USERDATA")
                user.setInteger(1, forKey: "check")
                user.setObject(labelTitle.text!, forKey: "dataTitle")
                user.synchronize()
                navigationController?.popToRootViewControllerAnimated(true)
            }
            else{
                let alert = UIAlertController(title: "錯誤", message: "價格輸入錯誤 不是數字", preferredStyle: UIAlertControllerStyle.Alert)
                let okayButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel
                    , handler:nil)
                alert.addAction(okayButton)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
        else{
            let alert = UIAlertController(title: "錯誤", message: "有資料未輸入", preferredStyle: UIAlertControllerStyle.Alert)
            let okayButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel
            , handler:nil)
            alert.addAction(okayButton)
            presentViewController(alert, animated: true, completion: nil)
        }
    }

}