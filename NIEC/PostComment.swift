//
//  PostComment.swift
//  NIEC
//
//  Created by Ravi Ranjan on 15/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class PostComment: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewEditing()
    }

    func viewEditing(){
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "n")!)
        self.title = "Post"
        self.textview.layer.borderWidth = 1.0
        self.textview.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        self.textview.layer.borderColor = UIColor.whiteColor().CGColor
        self.textview.layer.cornerRadius = 2.0
        
        
        self.button.backgroundColor = UIColor(netHex:0x211c32)
        self.button.layer.cornerRadius = 2.0
        self.button.layer.borderWidth = 0.5
    }

    func errorDialog(t1:String,m1:String,t2:String){
        let alert = UIAlertController(title: t1, message: m1, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: t2, style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func postButton(sender: AnyObject) {
        let postObject = PFObject(className:"Posts")
        let message:String = self.textview.text
        if(!message.isEmpty && message != " "){
            postObject["post"] = textview.text
            postObject["user"] = PFUser.currentUser()
            postObject.saveInBackgroundWithBlock {
                (success: Bool, error: NSError?) -> Void in
                if (success) {
                    print("post saved succefully!")
                    self.navigationController?.popViewControllerAnimated(true)
                } else {
                    if let error = error {
                        let errorString = error.userInfo["error"] as? String
                        print(errorString)
                        self.errorDialog("Error!", m1: errorString!, t2: "OK")
                        print("login error!")
                    }
            }
        }
    }else{
            print("Empty text field")
            self.errorDialog("Input Error!", m1: "Field is empty", t2: "OK")

        }
    }

}
