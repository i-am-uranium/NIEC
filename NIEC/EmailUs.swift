//
//  EmailUs.swift
//  NIEC
//
//  Created by Ravi Ranjan on 23/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import MessageUI

class EmailUs: UIViewController, MFMailComposeViewControllerDelegate{
    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var emailfield: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        boarderAddingTofields()
        super.viewDidLoad()
        scroller.contentInset = UIEdgeInsetsMake(0, 0, 400, 0)
    }
    
    
    func boarderAddingTofields(){
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        self.messageField.layer.cornerRadius = 5.0
        self.messageField.layer.borderColor = UIColor.grayColor().CGColor
        self.messageField.layer.borderWidth = 0.25
        self.nameField.layer.borderColor = UIColor.grayColor().CGColor
        self.phoneNumberField.layer.borderColor = UIColor.grayColor().CGColor
        self.emailfield.layer.borderColor = UIColor.grayColor().CGColor
        self.button1.layer.cornerRadius = 2.0
    
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
    
    
    @IBAction func sendButtonsFucntion(sender: AnyObject) {
        let emailTitle = "Contact Form " + nameField.text!
        let messageBody = "Name: " + nameField.text! + "\nPhone: " + phoneNumberField.text! + "\nEmail: " + emailfield.text! + "\n\nMessage: \n" + messageField.text!
        let toRecipents = ["stupidravi2009@gmail.com"]
        let mc  :MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: false)
        mc.setToRecipients(toRecipents)
        self.presentViewController(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue {
        case MFMailComposeResultCancelled.rawValue :
            print("mail has been cancel")
        case MFMailComposeResultSaved.rawValue :
            print("mail has been save")
        case MFMailComposeResultFailed.rawValue :
            print("mail has been Failed %@",[error?.localizedDescription])
        case MFMailComposeResultSent.rawValue :
            print("mail has been sent")
        default:
            break
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func dissmissKeyboard(sender: AnyObject) {
        self.resignFirstResponder()
    }
    
    // function to resign te keyboard fromthe textView
    func textView(textView : UITextView, text: String) -> Bool{
        if text == "\n" {
          textView.resignFirstResponder()
            return false
        }
        return true
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
