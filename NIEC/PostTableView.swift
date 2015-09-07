//
//  PostTableView.swift
//  NIEC
//
//  Created by Ravi Ranjan on 03/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Parse

class PostTableView: UITableViewController {
    
    
    
    
    


    override func viewDidAppear(animated: Bool) {
        if !(PFUser.currentUser() != nil)
        {
            let loginAlert: UIAlertController = UIAlertController(title: "Sign Up or Login", message: "Please Sign Up Or Login", preferredStyle: UIAlertControllerStyle.Alert)
            loginAlert.addTextFieldWithConfigurationHandler({
                textfield in
                textfield.placeholder = "Your Username"
            })
            loginAlert.addTextFieldWithConfigurationHandler({
                textfield in
                textfield.placeholder = "Your Password"
                textfield.secureTextEntry = true
            })
            
            // User login implementaion
            loginAlert.addAction(UIAlertAction(title: "Login", style: UIAlertActionStyle.Default, handler:{
                alertAction in
                let loginField:NSArray = loginAlert.textFields as! NSArray
                let userNameTextField:UITextField = loginField.objectAtIndex(0) as! UITextField
                let passwordTextField:UITextField = loginField.objectAtIndex(1) as! UITextField
                let username = userNameTextField.text
                let password = passwordTextField.text
                PFUser.logInWithUsernameInBackground(username! , password:password!) {
                    (user: PFUser?, error: NSError?) -> Void in
                    if user != nil {
                        print("login succesful")
                        // Do stuff after successful login.
                    } else {
                        print("login error!")
                        // do something to handle error
                    }
                }
            }))
            
            
            // User sign up implementaion
            loginAlert.addAction(UIAlertAction(title: "Sign Up", style: UIAlertActionStyle.Default, handler:{
                alertAction in
                let loginField:NSArray = loginAlert.textFields as! NSArray
                let userNameTextField:UITextField = loginField.objectAtIndex(0) as! UITextField
                let passwordTextField:UITextField = loginField.objectAtIndex(1) as! UITextField
                let user:PFUser  = PFUser()
                user.username = userNameTextField.text
                user.password = passwordTextField.text
                user.signUpInBackgroundWithBlock {
                    (succeeded: Bool, error: NSError?) -> Void in
                    if let error = error {
                        let errorString = error.userInfo["error"] as? NSString
                        print(errorString)
                        // Show the errorString somewhere and let the user try again.
                    } else {
                        print("sign up succesful")
                        // Hooray! Let them use the app now.
                    }
                }
            }))
            
            
            self.presentViewController(loginAlert, animated: true, completion: nil)
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    
    

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("POST", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
