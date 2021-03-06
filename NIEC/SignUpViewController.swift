//
//  SignUpViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 08/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var userName: UITextField!
    @IBOutlet var branch: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewEditing()
    }
    
    @IBAction func signUp(sender: AnyObject) {
        
        if (userName.text?.isEmpty != false){
            errorDialog("Sign Up Error", m1: "One or more field are empty", t2: "OK")
            print("One or more fields are empty")
            print(userName.text?.isEmpty)
        }else if (password.text?.isEmpty != false){
            errorDialog("Sign Up Error", m1: "One or more field are empty", t2: "OK")
            print("One or more fields are empty")
        }else if (email.text?.isEmpty != false){
            errorDialog("Sign Up Error", m1: "One or more field are empty", t2: "OK")
            print("One or more fields are empty")
        }else if (branch.text?.isEmpty != false){
            errorDialog("Sign Up Error", m1: "One or more field are empty", t2: "OK")
            print("One or more fields are empty")
        }else{
            let user = PFUser()
            user.username = userName.text
            user.password = password.text
            user.email = email.text
            user["branch"] = branch.text
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool, error: NSError?) -> Void in
                if let error = error {
                    let errorString = error.userInfo["error"] as? String
                    print(errorString)
                    self.errorDialog("Sign Up Error", m1: errorString!, t2: "OK")
                    } else {
                    print("Sign Up successful")
                    self.navigationController?.popViewControllerAnimated(true)
                }
            }
            
        }
 }
    
    func errorDialog(t1:String,m1:String,t2:String){
        let alert = UIAlertController(title: t1, message: m1, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: t2, style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func viewEditing(){
        self.view.backgroundColor = UIColor(netHex:0x211c32)
        editTestFields(email)
        editTestFields(password)
        editTestFields(userName)
        editTestFields(branch)
        email.delegate = self
        password.delegate = self
        userName.delegate = self
        branch.delegate = self
        buttonField(signUpButton,colors: UIColor(netHex: 0xf6546a))
        signUpEdit()
        
    }

    
    
    func editTestFields(field: UITextField){
        field.layer.cornerRadius = 2.0
        field.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        field.layer.borderWidth = 0.5
        field.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    
    func buttonField(buttonField:UIButton,colors:UIColor){
        buttonField.backgroundColor = colors
        buttonField.layer.cornerRadius = 2.0
        buttonField.layer.borderWidth = 0.5
        
    }
        
    func signUpEdit(){
        
        let imageView3 = UIImageView();
        let image3 = UIImage(named: "ic_person_white_36pt");
        imageView3.image = image3;
        imageView3.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        view.addSubview(imageView3)
        userName.leftView = imageView3;
        userName.leftViewMode = UITextFieldViewMode.Always
        
        
        let imageView2 = UIImageView();
        let image2 = UIImage(named: "ic_lock_white_36pt");
        imageView2.image = image2;
        imageView2.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        view.addSubview(imageView2)
        password.leftView = imageView2;
        password.leftViewMode = UITextFieldViewMode.Always
        
        let imageView1 = UIImageView();
        let image1 = UIImage(named: "ic_mail_white_36pt");
        imageView1.image = image1;
        imageView1.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        view.addSubview(imageView1)
        email.leftView = imageView1;
        email.leftViewMode = UITextFieldViewMode.Always
        
        
        let imageView4 = UIImageView();
        let image4 = UIImage(named: "ic_school_white_36pt");
        imageView4.image = image4;
        imageView4.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        view.addSubview(imageView4)
        branch.leftView = imageView4;
        branch.leftViewMode = UITextFieldViewMode.Always
        
        
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
//        if textField == userName{
//        password.becomeFirstResponder()
//        }
//        else if textField == password{
//            email.becomeFirstResponder()
//        }else if textField == email{
//            branch.becomeFirstResponder()
//        }else{
//            branch.resignFirstResponder()
//        }
        
        return true
    }

}
