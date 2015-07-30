//
//  TPOMailViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 27/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class TPOMailViewController: UIViewController {

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var messageField: UILabel!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var scroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizingTheFields()
        scroller.contentInset = UIEdgeInsetsMake(0, 0, 400, 0)

        // Do any additional setup after loading the view.
    }

    
    func customizingTheFields(){
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        self.messageField.layer.cornerRadius = 5.0
        self.messageField.layer.borderColor = UIColor.grayColor().CGColor
        self.messageField.layer.borderWidth = 0.25
        self.nameField.layer.borderColor = UIColor.grayColor().CGColor
        self.phoneNumberField.layer.borderColor = UIColor.grayColor().CGColor
        self.emailField.layer.borderColor = UIColor.grayColor().CGColor
        self.sendButton.layer.cornerRadius = 2.0
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillLayoutSubviews() {
        self.scroller.frame = self.view.bounds
        self.scroller.contentSize.height = 400
        self.scroller.contentSize.width = 0
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
