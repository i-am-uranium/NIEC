//
//  TPOMailViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 27/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import MessageUI

class TPOMailViewController: UIViewController,MFMailComposeViewControllerDelegate {

    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var scroller: UIScrollView!

    
    @IBOutlet weak var send: UIButton!
    
    var email:String!
    var userName:String!
    var emailAdd = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print(email)
        customizingTheFields()
        scroller.contentInset = UIEdgeInsetsMake(0, 0, 400, 0)
        switch(userName)
        {
        case "Mr. Aviag Kamal":
            emailAdd.append("tpo@niecdelhi.ac.in")
            break
        case "IT":
            emailAdd.append("rajesh.yadav@niecdelhi.ac.in")
            break
        case "CSE":
            emailAdd.append("tanvi.rustagi@niecdelhi.ac.in")
            break
        case "EEE":
            emailAdd.append("monika.dubey@niecdelhi.ac.in")
            break
        case"MCA":
            emailAdd.append("shipra.varshney@niecdelhi.ac.in")
            break
        case "MAE":
            emailAdd.append("jamuna.narayanan@niecdelhi.ac.in")
            break
        case "ECE":
            emailAdd.append("ram.prakash@niecdelhi.ac.in")
            break
        case "MBA":
            emailAdd.append("kamal.singh@niecdelhi.ac.in")
            break
        default:
            print("SomeKind of  Error")
            
        }
    }

    
    func customizingTheFields(){
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        
        self.messageField.layer.cornerRadius = 5.0
        self.messageField.layer.borderColor = UIColor.grayColor().CGColor
        self.messageField.layer.borderWidth = 0.25
        self.nameField.layer.borderColor = UIColor.grayColor().CGColor
        self.phoneNumberField.layer.borderColor = UIColor.grayColor().CGColor
        self.emailField.layer.borderColor = UIColor.grayColor().CGColor
        self.send.layer.cornerRadius = 2.0
    
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
    
    
    @IBAction func sendMail(sender: AnyObject) {
       // let EMAIL = email
        let emailTitle = "Contact Form From" + nameField.text!
        let messageBody = "Name: " + nameField.text! + "\nPhone: " + phoneNumberField.text! + "\nEmail: " + emailField.text! + "\n\nMessage: \n" + messageField.text!
        //let toRecipents = [EMAIL]
        let mc  :MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: false)
        print(emailAdd)
        mc.setToRecipients(emailAdd)
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
