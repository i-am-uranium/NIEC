//
//  PostDetails.swift
//  NIEC
//
//  Created by Ravi Ranjan on 03/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Parse

class PostDetails: UIViewController {

    @IBOutlet var writePost: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        writePostTextView()

        // Do any additional setup after loading the view.
    }
    
    
    func writePostTextView(){
        self.writePost.layer.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2).CGColor
        self.writePost.layer.borderColor = UIColor.blackColor().CGColor
        self.writePost.layer.borderWidth = 0.5
        self.writePost.layer.cornerRadius = 5.0
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func writePost(sender: AnyObject) {
        let postObject = PFObject(className: "PostObject")
        postObject["post"] = writePost.text
        postObject["user"] = PFUser.currentUser()
        postObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
                print("Object has been saved.")
        }
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
