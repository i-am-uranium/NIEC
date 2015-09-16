//
//  PostComment.swift
//  NIEC
//
//  Created by Ravi Ranjan on 15/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class PostComment: UIViewController {

    @IBOutlet var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Post"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func postButton(sender: AnyObject) {
        
        
        let postObject = PFObject(className:"Posts")
                postObject["post"] = textview.text
                postObject["user"] = PFUser.currentUser()
                postObject.saveInBackgroundWithBlock {
                    (success: Bool, error: NSError?) -> Void in
                    if (success) {
                        print("post saved succefully!")
                        self.navigationController?.popViewControllerAnimated(true)
                    } else {
                        // There was a problem, check error.description
                    }
                }
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
