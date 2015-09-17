//
//  PostSomething.swift
//  NIEC
//
//  Created by Ravi Ranjan on 07/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class PostSomething: UIViewController {
    
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var username: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        loginEditView()
      
        
    }
    
    
    @IBAction func loginAction(sender: AnyObject) {
        
        if username.text!.isEmpty || passwordField.text!.isEmpty{
            print("One or more fields are empty")
            errorDialog("Input Error!",m1: "One or More FIelds are Empty!",t2: "Ok")
        
        }else{
            let USERNAME = username.text
            let PASSWORD = passwordField.text
            PFUser.logInWithUsernameInBackground(USERNAME! , password:PASSWORD!) {
                (user: PFUser?, error: NSError?) -> Void in
                if user != nil {
                    print("login succesful")
                    
                    
                    let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                    let loggedInView: UIViewController = storyboard.instantiateViewControllerWithIdentifier("POSTVIEW")
                    self.navigationController?.pushViewController(loggedInView, animated: true)
                    // Do stuff after successful login.
                } else {
                    if let error = error {
                        let errorString = error.userInfo["error"] as? String
                        print(errorString)
                        self.errorDialog("Login Error", m1: errorString!, t2: "OK")
                        print("login error!")
                    }
                    
                    // do something to handle error
                }
            }
        }
        
    }
    
    
    func errorDialog(t1:String,m1:String,t2:String){
        
        let alert = UIAlertController(title: t1, message: m1, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: t2, style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func loginEditView(){
        self.view.backgroundColor = UIColor(netHex:0x211c32)
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        editTestFields(passwordField)
        editTestFields(username)
        buttonField(loginButton,colors: UIColor(netHex: 0x01bad4))
        buttonField(signUpButton,colors: UIColor(netHex: 0xf6546a))
        
        let imageView1 = UIImageView();
        let image1 = UIImage(named: "ic_person_white_36pt");
        imageView1.image = image1;
        imageView1.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        view.addSubview(imageView1)
        username.leftView = imageView1;
        username.leftViewMode = UITextFieldViewMode.Always
        
        
        let imageView2 = UIImageView();
        let image2 = UIImage(named: "ic_lock_white_36pt");
        imageView2.image = image2;
        imageView2.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        view.addSubview(imageView2)
        passwordField.leftView = imageView2;
        passwordField.leftViewMode = UITextFieldViewMode.Always
        
        
    }
    func buttonField(buttonField:UIButton,colors:UIColor){
        buttonField.backgroundColor = colors
        buttonField.layer.cornerRadius = 2.0
        buttonField.layer.borderWidth = 0.5
        
    }
    func editTestFields(field: UITextField){
        field.layer.cornerRadius = 2.0
        field.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        field.layer.borderWidth = 0.5
        field.layer.borderColor = UIColor.whiteColor().CGColor
   }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
