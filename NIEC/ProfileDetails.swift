//
//  ProfileDetails.swift
//  NIEC
//
//  Created by Ravi Ranjan on 22/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Social

class ProfileDetails: UIViewController {
    
    
    @IBOutlet weak var mDetailImage: UIImageView!
    @IBOutlet weak var mDetaailLabel: UILabel!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    var imageName : AnyObject?{
        get{
            return NSUserDefaults.standardUserDefaults().objectForKey("imageName")
        }
    }

    override func viewDidLoad() {
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: imageName as! String)!)
        self.facebookButton.layer.cornerRadius = 5.0
        self.twitterButton.layer.cornerRadius = 5.0
        
        self.mDetailImage.layer.cornerRadius = self.mDetailImage.frame.size.width / 2.5
        self.mDetailImage.clipsToBounds = true
        // self.mDetailImage.layer.borderWidth = 5.0
        // self.mDetailImage.layer.borderColor = UIColor.whiteColor().CGColor
        
        mDetailImage.image = UIImage(named: imageName as! String)
        mDetaailLabel.text = imageName as? String
        
        self.title = imageName as? String
        // Do any additional setup after loading the view
        super.viewDidLoad()
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
    
    
    // Social Link Integration
    
    // Facebook integration
    @IBAction func facebook(sender: AnyObject) {
        //check if the facebok service is availble
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)
        {
            //if the facebook service is available then find the VIEW
            let facebookSheet : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            // add constraints o the view
            facebookSheet.setInitialText("Chekc this out"  + mDetaailLabel.text! + "It's Awesom")
            facebookSheet.addImage(mDetailImage.image)
            // represrent the view 
            self.presentViewController(facebookSheet, animated: true, completion: nil)
            
        }else{
        let alert = UIAlertController(title: "Acounts", message: "Please log in to your acount in your settings ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
    // twitter integration
    @IBAction func twitter(sender: AnyObject) {
        
        //check if the twitter service is availble
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter)
        {
            //if the facebook service is available then find the VIEW
            let twitterSheet : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            // add constraints o the view
            twitterSheet.setInitialText("Chekc this out"  + mDetaailLabel.text! + "It's Awesom")
            twitterSheet.addImage(mDetailImage.image)
            // represrent the view
            self.presentViewController(twitterSheet, animated: true, completion: nil)
            
        }else{
            // create an alert
            let alert = UIAlertController(title: "Acounts", message: "Please log in to your acount in your settings ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
