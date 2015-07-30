//
//  AboutUs.swift
//  NIEC
//
//  Created by Ravi Ranjan on 22/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class AboutUs: UIViewController {
    
    @IBOutlet var scroller: UIScrollView!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var socialButton: UIButton!
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        super.viewDidLoad()
        scroller.contentInset = UIEdgeInsetsMake(0, 0, 400, 0)
        self.contactButton.layer.cornerRadius = 5.0
        self.socialButton.layer.cornerRadius = 5.0
        self.title = "About Us"
        

        // Do any additional setup after loading the view.
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
    
    
    @IBAction func contactUs(sender: AnyObject) {
        tabBarController?.selectedIndex = 4
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
